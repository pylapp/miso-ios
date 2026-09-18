// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

#if !os(macOS) // To make build of documentation possible

import MISOComponents
import MISOFoundationsMISO
import SwiftUI

/// A sheet view details about the app and a bottom toolbar to report bugs or get source code.
/// Manages also the easter egg with the ``MISOConfettiView``.
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
///     let myAppURLS = MISOAppDetailsURL(bugReport: issueTrackerURL, sourceCode: forgeURL)
///     let myAppEditor = MISOAppEditor(name: someName, website: websiteReference, mastodon: mastodonReference)
///
///     SomeView()
///     .sheet(isPresented: $isAboutSheetPresented) {
///         MISOAppDetailsSheet(appURLs: myAppURLS, editor: myAppEditor)
///     }
/// ```
///
/// - Since: 1.1.0
@available(iOS 17, *)
@available(macOS, unavailable) // Need to find something else than Safari View stuff
public struct MISOAppDetailsSheet: View { // TODO: Check with watchOS, visionOS, tvOS, iPadOS

    // MARK: - Properties

    /// Controls the full-screen confetti overlay.
    @State private var showConfetti: Bool

    /// URL to open in the in-app ``SafariView`` sheet.
    @State private var safariURL: IdentifiableURL?

    /// Useful URL for the app
    private let appURLs: MISOAppDetailsURL

    /// App editor information
    private let appEditor: MISOAppEditor

    @Environment(\.theme) private var theme
    @Environment(\.openURL) private var openURL

    // MARK: - Intializer

    /// Initializees the sheet for app details
    ///
    /// - Parameters:
    ///    - appURL: Useful URL for the app
    ///    - appEditor: App editor information
    public init(appURLs: MISOAppDetailsURL,
                appEditor: MISOAppEditor)
    {
        showConfetti = false
        safariURL = nil
        self.appURLs = appURLs
        self.appEditor = appEditor
    }

    // MARK: - Body

    // swiftlint:disable closure_body_length
    public var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: theme.spaces.fixedLarge) {
                    developerSection
                    Spacer(minLength: theme.spaces.fixedLarge)
                    aboutSection
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
                        safariURL = IdentifiableURL(appURLs.bugReport)
                    }
                    MISOToolBarItem(
                        // swiftlint:disable:next accessibility_label_for_image
                        icon: Image(systemName: "chevron.left.forwardslash.chevron.right"),
                        accessibilityLabel: String(localized: "miso.module.appservices.settings.toolbar.sourceCode",
                                                   bundle: Bundle.MISOModulesAppServices))
                    {
                        safariURL = IdentifiableURL(appURLs.sourceCode)
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

    // MARK: - About section

    private var aboutSection: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedMedium) {
            Text(String(localized: "miso.module.appservices.settings.about.app.title",
                        bundle: Bundle.MISOModulesAppServices))
                .headingSmall(theme)
                .foregroundStyle(theme.colors.contentDefault)

            VStack(alignment: .leading, spacing: theme.spaces.fixedSmall) {
                infoRow(label: String(localized: "miso.module.appservices.settings.about.version",
                                      bundle: Bundle.MISOModulesAppServices),
                        value: BundleInfo.appVersion)
                infoRow(label: String(localized: "miso.module.appservices.settings.about.build",
                                      bundle: Bundle.MISOModulesAppServices), value: BundleInfo.buildNumber)
                if let tag = BundleInfo.releaseTag {
                    infoRow(label: String(localized: "miso.module.appservices.settings.about.tag",
                                          bundle: Bundle.MISOModulesAppServices), value: tag)
                }
            }
            .padding(theme.spaces.fixedMedium)
            .background(
                RoundedRectangle(cornerRadius: theme.borders.radiusMedium)
                    .fill(Color(uiColor: .secondarySystemGroupedBackground)))

            BuildTypeRow(
                buildTypeInfo: BundleInfo.buildTypeInfo,
                showConfetti: $showConfetti)
        }
    }

    // MARK: - Developer section

    private var developerSection: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedMedium) {
            Text("miso.module.appservices.settings.about.editor.title",
                 bundle: Bundle.MISOModulesAppServices)
                .headingSmall(theme)
                .foregroundStyle(theme.colors.contentDefault)

            VStack(alignment: .leading, spacing: theme.spaces.fixedSmall) {
                Text(appEditor.name)
                    .bodyStrongLarge(theme)
                    .foregroundStyle(theme.colors.contentDefault)

                MISOLink(
                    "miso.module.appservices.settings.about.editor.website",
                    bundle: Bundle.MISOModulesAppServices,
                    image: MISOImage(asset: appEditor.website.logo, renderingMode: .original),
                    size: .default)
                {
                    safariURL = IdentifiableURL(appEditor.website.url)
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                MISOLink(
                    "miso.module.appservices.settings.about.editor.mastodon",
                    bundle: Bundle.MISOModulesAppServices,
                    image: MISOImage(asset: appEditor.mastodon.logo, renderingMode: .original),
                    size: .default)
                {
                    safariURL = IdentifiableURL(appEditor.mastodon.url)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(theme.spaces.fixedMedium)
            .background(
                RoundedRectangle(cornerRadius: theme.borders.radiusMedium)
                    .fill(Color(uiColor: .secondarySystemGroupedBackground)))
        }
    }

    // MARK: - Helpers

    private func infoRow(label: String, value: String) -> some View {
        MISOStaticListItem(data: .init(label: label),
                           trailing: .tag(MISOTag(label: value, status: .info(leading: .none))))
            .misoListItemStyle(divider: false)
            .misoListItemSize(.small)
    }
}
#endif
