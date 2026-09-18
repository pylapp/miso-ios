// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import SwiftUI

// MARK: - Bundle info helpers

// swiftlint:disable discouraged_optional_collection

/// Static helpers for reading app identity values from `Info.plist` at runtime.
///
/// Centralised here so that ``MISOAppDetailsSheet`` and any other view that needs
/// version / build / tag information can call these without duplicating the logic.
enum BundleInfo {

    /// Display name read from `CFBundleDisplayName` in `Info.plist`.
    static var appDisplayName: String {
        appDisplayName(from: Bundle.main.infoDictionary)
    }

    /// Display name extracted from the given `Info.plist` dictionary.
    ///
    /// Exposed with `info` as parameter so unit tests can exercise this logic
    /// without depending on the real `Bundle.main.infoDictionary`.
    static func appDisplayName(from info: [String: Any]?) -> String {
        info?["CFBundleDisplayName"] as? String ?? "-"
    }

    /// Marketing version read from `CFBundleShortVersionString` in `Info.plist`.
    static var appVersion: String {
        appVersion(from: Bundle.main.infoDictionary)
    }

    /// Marketing version extracted from the given `Info.plist` dictionary.
    ///
    /// Exposed with `info` as parameter so unit tests can exercise this logic
    /// without depending on the real `Bundle.main.infoDictionary`.
    static func appVersion(from info: [String: Any]?) -> String {
        info?["CFBundleShortVersionString"] as? String ?? "—"
    }

    /// Build number read from `CFBundleVersion` in `Info.plist`.
    static var buildNumber: String {
        buildNumber(from: Bundle.main.infoDictionary)
    }

    /// Build number extracted from the given `Info.plist` dictionary.
    ///
    /// Exposed with `info` as parameter so unit tests can exercise this logic
    /// without depending on the real `Bundle.main.infoDictionary`.
    static func buildNumber(from info: [String: Any]?) -> String {
        info?["CFBundleVersion"] as? String ?? "—"
    }

    /// Release tag read from `MISO_ForApp_ReleaseTag` in `Info.plist`.
    /// Can be 1.2.3 for example.
    ///
    /// Returns `nil` when the key is absent or empty (local / untagged builds).
    static var releaseTag: String? {
        releaseTag(from: Bundle.main.infoDictionary)
    }

    /// Release tag extracted from the given `Info.plist` dictionary.
    ///
    /// Returns `nil` when the key is absent or empty (local / untagged builds).
    /// Exposed with `info` as parameter so unit tests can exercise this logic
    /// without depending on the real `Bundle.main.infoDictionary`.
    static func releaseTag(from info: [String: Any]?) -> String? {
        let value = info?["MISO_ForApp_ReleaseTag"] as? String
        return value?.isEmpty == false ? value : nil
    }

    /// Build type read from `MISO_ForApp_BuildType` in `Info.plist`.
    ///
    /// Possible values are `"debug"`, `"beta (TestFlight)"`, and `"stable (AppStore)"`.
    static var buildType: String {
        buildType(from: Bundle.main.infoDictionary)
    }

    /// Build type extracted from the given `Info.plist` dictionary.
    ///
    /// Possible values are `"debug"`, `"beta (TestFlight)"`, and `"stable (AppStore)"`.
    /// Exposed with `info` as parameter so unit tests can exercise this logic
    /// without depending on the real `Bundle.main.infoDictionary`.
    static func buildType(from info: [String: Any]?) -> String {
        info?["MISO_ForApp_BuildType"] as? String ?? "debug"
    }

    /// SF Symbol name, bold label, and parenthesised detail for the current build type.
    ///
    /// Used by ``BuildTypeChip`` to render the icon, the distribution channel in bold,
    /// and the build category as a secondary line.
    static var buildTypeInfo: (symbol: String, label: String, detail: String) {
        buildTypeInfo(for: buildType)
    }

    /// SF Symbol name, bold label, and parenthesised detail for the given build type value.
    ///
    /// Exposed with `buildType` as parameter so unit tests can exercise the three
    /// branches (`"beta (TestFlight)"`, `"stable (AppStore)"`, and the default one)
    /// without depending on the real `Bundle.main.infoDictionary`.
    static func buildTypeInfo(for buildType: String) -> (symbol: String, label: String, detail: String) {
        switch buildType {
        case "beta (TestFlight)":
            (
                "wrench.adjustable.fill",
                String(localized: "miso.module.appservices.settings.about.buildtype.label.beta",
                       bundle: Bundle.MISOModulesAppServices),
                String(localized: "miso.module.appservices.settings.about.buildtype.detail.beta",
                       bundle: Bundle.MISOModulesAppServices))
        case "stable (AppStore)":
            (
                "checkmark.seal.fill",
                String(localized: "miso.module.appservices.settings.about.buildtype.label.stable",
                       bundle: Bundle.MISOModulesAppServices),
                String(localized: "miso.module.appservices.settings.about.buildtype.detail.stable",
                       bundle: Bundle.MISOModulesAppServices))
        default:
            (
                "hammer.fill",
                String(localized: "miso.module.appservices.settings.about.buildtype.label.debug",
                       bundle: Bundle.MISOModulesAppServices),
                String(localized: "miso.module.appservices.settings.about.buildtype.detail.debug",
                       bundle: Bundle.MISOModulesAppServices))
        }
    }
}

// swiftlint:enable discouraged_optional_collection
