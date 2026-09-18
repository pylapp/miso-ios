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
///     .sheet(isPresented: $isAboutSheetPresented) {
///         MISOAppDetailsSheet(bugReportURL: URL(string: urlToBugTracker)!,
///                             sourceCodeURL: URL(string: urlToSourceCode!)
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

    /// URL for bug reports
    private let bugReportURL: URL

    /// URL for source code
    private let sourceCodeURL: URL

    @Environment(\.theme) private var theme
    @Environment(\.openURL) private var openURL

    // MARK: - Intializer

    /// Initializees the sheet for app details
    ///
    /// - Parameters:
    ///    - bugReportURL: URL to report a bug
    ///    - sourceCodeURL: URL to get the source code
    public init(bugReportURL: URL, sourceCodeURL: URL) {
        showConfetti = false
        safariURL = nil
        self.bugReportURL = bugReportURL
        self.sourceCodeURL = sourceCodeURL
    }

    // MARK: - Body

    // swiftlint:disable closure_body_length
    public var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: theme.spaces.fixedLarge) {
                    aboutSection
                    Spacer(minLength: theme.spaces.fixedLarge)
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
                        safariURL = IdentifiableURL(bugReportURL)
                    }
                    MISOToolBarItem(
                        // swiftlint:disable:next accessibility_label_for_image
                        icon: Image(systemName: "chevron.left.forwardslash.chevron.right"),
                        accessibilityLabel: String(localized: "miso.module.appservices.settings.toolbar.sourceCode",
                                                   bundle: Bundle.MISOModulesAppServices))
                    {
                        safariURL = IdentifiableURL(sourceCodeURL)
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

    // MARK: - Helpers

    private func infoRow(label: String, value: String) -> some View {
        MISOStaticListItem(data: .init(label: label),
                           trailing: .tag(MISOTag(label: value, status: .info(leading: .none))))
            .misoListItemStyle(divider: false)
            .misoListItemSize(.small)
    }
}
#endif
