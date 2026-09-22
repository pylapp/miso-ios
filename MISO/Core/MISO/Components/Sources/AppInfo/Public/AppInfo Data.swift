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

// MARK: - App Legal Info

/// Wraps URL about legal topics of the app (like privacy statement and terms of uses)
///
/// - Since: 1.1.0
public struct MISOAppLegalInfo {

    /// The privacy policy statement
    public let privacyStatement: URL

    /// To get app source code
    public let termsOfUses: URL

    /// Defines a new `MISOAppLegalInfo`
    ///
    /// - Parameters:
    ///    - privacyStatement: URL about the privacy policy of the app
    ///    - termsOfUses: URL about the privacy policy of the app
    public init(privacyStatement: URL, termsOfUses: URL) {
        self.privacyStatement = privacyStatement
        self.termsOfUses = termsOfUses
    }
}

// MARK: - App Support Ifno

/// Wraps URL about app supports (like bug report ans source code reference)
///
/// - Since: 1.1.0
public struct MISOAppSupportInfo {

    /// To submit bug reports
    public let bugReport: URL

    /// To get app source code
    public let sourceCode: URL

    /// Defines a new `MISOAppSupporInfo
    ///
    /// - Parameters:
    ///    - bugReport: URL about the bug tracker for the app
    ///    - sourceCode: URL of the forge repository hosting the app source code
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
    ///
    /// - Parameters:
    ///    - name: App editor name
    ///    - website: App editor website
    ///    - mastodon: App editor Mastodon profile
    public init(name: String, website: WebSiteReference, mastodon: WebSiteReference) {
        self.name = name
        self.website = website
        self.mastodon = mastodon
    }
}

// MARK: - App About

/// A build type info is a symobol, a labeml alnd a detail for the end user
public typealias BuildTypeInfo = (symbol: String, label: String, detail: String)

/// Wraps useful information about the app version / state
///
/// - Since: 1.1.0
public struct MISOAppAbout {

    /// The app version, i.e. marketing version
    public let version: String

    /// The app build number
    public let buildNumber: String

    /// Some build info details
    public let buildInfo: BuildTypeInfo

    /// A tag about the type of build or release
    public let releaseTag: String?

    /// Defines a new `MISOAppAbout`
    ///
    /// - Parameters:
    ///    - version: App version
    ///    - buildNumber: App build number
    ///    - buildInfo: App build infos
    ///    - releaseTag: Type of build, nil by default
    public init(version: String, buildNumber: String, buildInfo: BuildTypeInfo, releaseTag: String? = nil) {
        self.version = version
        self.buildNumber = buildNumber
        self.buildInfo = buildInfo
        self.releaseTag = releaseTag
    }
}
