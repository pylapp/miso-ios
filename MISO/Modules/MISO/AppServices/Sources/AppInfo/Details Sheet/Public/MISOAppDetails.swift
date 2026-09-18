// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import SwiftUI

// MARK: - Type aliases

/// Just to pack a logo and an URL for a web site reference to display
///
/// - Since: 1.1.0
public typealias WebSiteReference = (logo: Image, url: URL)

// MARK: - App URL

/// Wraps useful URL for the app
///
/// - Since: 1.1.0
public struct MISOAppDetailsURL {

    /// To submit bug reports
    public let bugReport: URL

    /// To get app source code
    public let sourceCode: URL

    /// Defines a new `MISOAppDetailsURL
    public init(bugReport: URL, sourceCode: URL) {
        self.bugReport = bugReport
        self.sourceCode = sourceCode
    }
}

// MARK: - App Editor

/// Wraps useful URL for the app
///
/// - Since: 1.1.0
public struct MISOAppEditor {

    /// Editor name
    public let name: String

    /// Editor website
    public let website: WebSiteReference

    /// Editor Mastodon profile
    public let mastodon: WebSiteReference

    /// Defines a new `MISOAppEditor`
    public init(name: String, website: WebSiteReference, mastodon: WebSiteReference) {
        self.name = name
        self.website = website
        self.mastodon = mastodon
    }
}
