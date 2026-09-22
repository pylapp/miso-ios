// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOFoundations

/// Queries the iTunes Lookup API to detect whether a newer version of the app is available on the App Store.
///
/// - Since:1.1.0
public enum MISOAppStoreUpdateService {

    /// The limit of characters for the release note
    public static let RELEASE_NOTE_MAX_COUNT_LIMIT: UInt = 300

    /// Checks the App Store for a newer version.
    ///
    /// - Parameters:
    ///   - appStoreID: Identifier of the app for the App Store (like 6783789743)
    ///   - country: Identifier of the country, like "fr"
    ///   - releaseNoteLimit: The number of characters to limit for the release note
    /// - Returns: An ``AppStoreUpdateInfo`` when an update is available, `nil` otherwise (no update or any error).
    static func checkForUpdate(appStoreID: String, country: String, releaseNoteLimit: UInt) async -> AppStoreUpdateInfo? {
        let lookupURL = URL(string: "https://itunes.apple.com/lookup?id=\(appStoreID)&country=\(country)&t=\(Date().timeIntervalSince1970)")
        guard let url = lookupURL else { return nil }
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                ML.error("iTunes lookup returned a non-200 response — cannot check for updates")
                return nil
            }
            return parse(data: data)
        } catch {
            ML.error("iTunes lookup request failed — cannot check for updates: \(error.localizedDescription)")
            return nil
        }
    }

    // MARK: - Private

    private static func parse(data: Data) -> AppStoreUpdateInfo? {
        guard
            let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
            let results = json["results"] as? [[String: Any]]
        else {
            ML.error("Failed to deserialise iTunes lookup response")
            return nil
        }
        guard let first = results.first else {
            ML.error("App not found on App Store — no update check possible")
            return nil
        }
        guard
            let storeVersion = first["version"] as? String,
            let trackViewURLString = first["trackViewUrl"] as? String,
            let appStoreURL = URL(string: trackViewURLString)
        else {
            ML.error("iTunes lookup result is missing version or trackViewUrl fields")
            return nil
        }
        let releaseNotes = first["releaseNotes"] as? String
        let localVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "0"
        guard storeVersion.compareVersion(to: localVersion) == .orderedDescending else {
            ML.log("No update available (local: \(localVersion), App Store: \(storeVersion))")
            return nil
        }
        ML.log("Update available — local: \(localVersion), App Store: \(storeVersion)")
        return AppStoreUpdateInfo(version: storeVersion, releaseNotes: releaseNotes, appStoreURL: appStoreURL)
    }
}

// MARK: - String version comparison

extension String {

    /// Compares two semantic version strings (e.g. "1.4.0" vs "1.5.0") component by component.
    func compareVersion(to other: String) -> ComparisonResult {
        let lhs = versionComponents()
        let rhs = other.versionComponents()
        let maxLength = max(lhs.count, rhs.count)
        for index in 0 ..< maxLength {
            let lhsValue = index < lhs.count ? lhs[index] : 0
            let rhsValue = index < rhs.count ? rhs[index] : 0
            if lhsValue < rhsValue { return .orderedAscending }
            if lhsValue > rhsValue { return .orderedDescending }
        }
        return .orderedSame
    }

    private func versionComponents() -> [Int] {
        split(separator: ".").compactMap { Int($0) }
    }
}
