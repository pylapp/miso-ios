// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

#if !os(macOS) && !os(tvOS) && !os(visionOS) && !os(watchOS)

import MISOComponents
import MISOComponentsMISO
import MISOFoundationsMISO
import MISOTokensRaw
import SwiftUI

/// A sheet view details about the app and a bottom toolbar to report bugs or get source code.
/// Manages also the easter egg with the `MISOConfettiView`.
///
/// This `View` needs some configuration elements from Info.plist:
/// - **CFBundleDisplayName:** App name
/// - **CFBundleShortVersionString**: Marketing version of the app
/// - **CFBundleVersion:** Build number of the app
/// - **MISO_ForApp_ReleaseTag**: The release tag, e.g. 1.2.3-rc.4
/// - **MISO_ForApp_BuildType**: In "debug", "beta (TestFlight)", and "stable (AppStore)"
///
/// # Code samples
///
/// ```swift
///     let myAppLogoImage = Image(decorative: "AppLogo")
///     let myAppLegalInfo = MISOAppLegalInfo(privacyStatement: privacyStatementURL, termsOfUses: termsOfUsesURL)
///     let myAppSupportInfo = MISOAppSupportInfo(bugReport: issueTrackerURl, sourceCode: sourceCodeURL),
///     let myAppEditor = MISOAppEditor(name: editorName, website: (logo: editorLogo, url: editorURL), mastodon: (logo: mastodonLogo, url: editorMastodonURL))
///
///     SomeView()
///     .sheet(isPresented: $isAboutSheetPresented) {
///         MISOAppDetailsSheet(
///             appIcon: Image(decorative: "Logo"),
///             legalInfo: myAppLegalInfo,
///             supportInfo: myAppSupportInfo
///             editorInfo: myAppEditor)
///     }
/// ```
///
/// - Since: 1.1.0
@available(iOS 17, *)
@available(macOS, unavailable) // Need to find something else than Safari View stuff
@available(tvOS, unavailable)
@available(visionOS, unavailable)
@available(watchOS, unavailable)
public struct MISOAppDetailsSheet: View {

    // MARK: - Properties

    /// Controls the full-screen confetti overlay.
    @State private var showConfetti: Bool

    /// URL to open in the in-app ``SafariView`` sheet.
    @State private var safariURL: IdentifiableURL?

    /// Logo of the app
    private let appIcon: Image

    /// Legal resources about the app
    private let legalInfo: MISOAppLegalInfo

    /// App support resources
    private let supportInfo: MISOAppSupportInfo

    /// App editor info
    private let editorInfo: MISOAppEditor

    @Environment(\.theme) private var theme
    @Environment(\.openURL) private var openURL

    // MARK: - Intializer

    /// Initializes the sheet for app details.
    /// Needs some references of user, but is able to extract app metadata like version and build number.
    ///
    /// - Parameters:
    ///    - appIcon: Icon, logo of the app
    ///    - legalInfo: App legal resources
    ///    - supportInfo: App support resources
    ///    - editorInfo: App editor information
    public init(appIcon: Image,
                legalInfo: MISOAppLegalInfo,
                supportInfo: MISOAppSupportInfo,
                editorInfo: MISOAppEditor)
    {
        showConfetti = false
        safariURL = nil

        self.appIcon = appIcon
        self.legalInfo = legalInfo
        self.supportInfo = supportInfo
        self.editorInfo = editorInfo
    }

    // MARK: - Body

    // swiftlint:disable closure_body_length
    public var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: theme.spaces.fixedLarge) {
                    imageSection
                    aboutSection
                    legalSection
                    developerSection
                }
                .padding(theme.spaces.fixedMedium)
            }
            .background(Color(uiColor: .systemGroupedBackground))
            .sheet(item: $safariURL) { item in
                SafariView(url: item.url)
                    .ignoresSafeArea()
            }
            .overlay {
                if showConfetti {
                    MISOConfettiView(isActive: $showConfetti)
                        .ignoresSafeArea()
                }
            }
            .toolBarTop(
                String(localized: "miso.module.appservices.settings.section.about",
                       bundle: Bundle.MISOModulesAppServices),
                leadingItems: {
                    MISOToolBarItem(navigation: .close)
                })
            .toolBarBottom(
                leadingItems: {
                    MISOToolBarItem(
                        // swiftlint:disable:next accessibility_label_for_image
                        icon: Image(systemName: "ladybug"),
                        accessibilityLabel: String(localized: "miso.module.appservices.settings.toolbar.bug",
                                                   bundle: Bundle.MISOModulesAppServices))
                    {
                        safariURL = IdentifiableURL(supportInfo.bugReport)
                    }
                    MISOToolBarItem(
                        // swiftlint:disable:next accessibility_label_for_image
                        icon: Image(systemName: "chevron.left.forwardslash.chevron.right"),
                        accessibilityLabel: String(localized: "miso.module.appservices.settings.toolbar.sourceCode",
                                                   bundle: Bundle.MISOModulesAppServices))
                    {
                        safariURL = IdentifiableURL(supportInfo.sourceCode)
                    }
                },
                trailingItems: {
                    MISOToolBarItem(
                        // swiftlint:disable:next accessibility_label_for_image
                        icon: Image(systemName: "gear"),
                        accessibilityLabel: String(localized: "miso.module.appservices.settings.toolbar.systemAppSettings",
                                                   bundle: Bundle.MISOModulesAppServices))
                    {
                        // swiftlint:disable:next force_unwrapping
                        openURL(URL(string: UIApplication.openSettingsURLString)!)
                    }
                })
            .misoNavigationBarAppearance()
            .onChange(of: showConfetti, onConfettiTriggered)
        }
    }

    // swiftlint:enable closure_body_length

    // MARK: - Actions

    private func onConfettiTriggered(_: Bool, isActive: Bool) {
        if isActive {
            NotificationCenter.default.post(name: Notification.Name.easterEggConfettiFound, object: nil)
        }
    }

    // MARK: - Sections

    private var imageSection: some View {
        HStack {
            Spacer()
            appIcon
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .clipShape(RoundedRectangle(cornerRadius: BorderRawTokens.radius600, style: .continuous))
                .shadow(radius: 8, y: 4)
                .accessibilityHidden(true)
            Spacer()
        }
    }

    private var aboutSection: some View {
        MISOAppAboutSection(appAbout: MISOAppAbout(version: BuildInfo.appVersion,
                                                   buildNumber: BuildInfo.buildNumber,
                                                   buildInfo: BuildInfo.buildTypeInfo,
                                                   releaseTag: BuildInfo.releaseTag),
                            actionTriggered: $showConfetti)
    }

    private var developerSection: some View {
        MISOAppEditorSection(appEditor: editorInfo)
    }

    private var legalSection: some View {
        MISOAppLegalSection(appLegal: legalInfo)
    }
}
#endif
