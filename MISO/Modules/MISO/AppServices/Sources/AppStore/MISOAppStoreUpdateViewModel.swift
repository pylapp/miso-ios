// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import SwiftUI

/// Drives the App Store update alert.
///
/// Instantiate once at the root of the view hierarchy. The check runs automatically
/// on init and sets ``showUpdateAlert`` to `true` when a newer version is available.
///
/// # Code samples
///
/// Instanciate the view model:
/// ```swift
///     @State private var appStoreVM = MISOAppStoreUpdateViewModel(appStoreID: APP_STORE_ID, country: COUNTRY_CODE)
/// ```
///
/// Then in the view:
/// ```swift
///     SomeView()
///     .alert(appStoreVM.alertTitle, isPresented: $appStoreVM.showUpdateAlert) {
///         Button("Dismiss", role: .cancel) {}
///         if let url = appStoreVM.appStoreURL {
///             Button("Go to App Store") {
///                 UIApplication.shared.open(url)
///             }
///         }
///     } message: {
///         Text(appStoreVM.alertMessage)
///     }
/// ```
///
/// - Since: 1.1.0
@Observable
@MainActor
@available(iOS 17.0, macOS 14.0, *)
public final class MISOAppStoreUpdateViewModel {

    // MARK: - Properties

    private(set) var updateInfo: AppStoreUpdateInfo?

    /// A flag saying the user `View` if the update alert should be displayed
    public var showUpdateAlert: Bool = false

    /// The message to display with the available updated version
    public var alertTitle: String {
        let version = updateInfo?.version ?? ""
        return String(format: String(localized: "miso.module.appservices.update.alert.title"), version)
    }

    /// The message to display with the release note or a fallback
    public var alertMessage: String {
        if let notes = updateInfo?.releaseNotes, !notes.isEmpty {
            let limit = 300
            if notes.count > limit {
                return String(notes.prefix(limit)) + "…"
            }
            return notes
        }
        return String(localized: "miso.module.appservices.update.alert.message.fallback")
    }

    /// The URL to the App Store app page
    public var appStoreURL: URL? {
        updateInfo?.appStoreURL
    }

    // MARK: - Initializers

    /// Instanciates a new `MISOAppStoreUpdateViewModel` with some configuration for iTunes lookup
    ///
    /// - Parameters:
    ///   - appStoreID: Identifier of the app for the App Store (like 6783789743)
    ///   - country: Identifier of the country, like "fr"
    ///   - releaseNoteLimit: The number of characters to limit for the release note
    public init(appStoreID: String, country: String, releaseNoteLimit: UInt = MISOAppStoreUpdateService.RELEASE_NOTE_MAX_COUNT_LIMIT) {
        Task {
            await checkForUpdate(appStoreID: appStoreID, country: country, releaseNoteLimit: releaseNoteLimit)
        }
    }

    deinit {}

    // MARK: - Private

    private func checkForUpdate(appStoreID: String, country: String, releaseNoteLimit: UInt) async {
        let info = await MISOAppStoreUpdateService.checkForUpdate(appStoreID: appStoreID, country: country, releaseNoteLimit: releaseNoteLimit)
        if let info {
            updateInfo = info
            showUpdateAlert = true
        }
    }
}
