// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation

/// Holds information about an available App Store update.
struct AppStoreUpdateInfo {

    /// The version string available on the App Store (e.g. "1.5.0").
    let version: String

    /// The release notes returned by the iTunes lookup API (may be nil or empty).
    let releaseNotes: String?

    /// The direct App Store URL to open when the user taps the dedicated button.
    let appStoreURL: URL
}
