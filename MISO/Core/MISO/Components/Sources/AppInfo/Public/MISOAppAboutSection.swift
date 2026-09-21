// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

#if !os(macOS) && !os(tvOS) && !os(visionOS) && !os(watchOS)

import MISOComponents
import MISOFoundationsMISO
import MISOThemesContract
import SwiftUI

/// Selection to display details and information about the app editor.
///
/// Opens web links in-app via `SafariView`.
/// Can be embedded in any view; manages its own in-app browser state.
///
/// # Code samples
///
/// ```swift
///     // Give to the view app verison, build number, build tag, build info and a flag for easter egg
///     MISOAppAboutSection(appAbout: MISOAppAbout(version: BuildInfo.appVersion,
///                                                buildNumber: BuildInfo.buildNumber,
///                                                buildInfo: BuildInfo.buildTypeInfo,
///                                                releaseTag: BuildInfo.releaseTag),
///                         actionTriggered: $showConfetti)
/// ```
///
/// - Since:1.1.0
@available(iOS 15, *)
@available(macOS, unavailable) // Need to find something else than Safari View stuff
@available(tvOS, unavailable)
@available(visionOS, unavailable)
@available(watchOS, unavailable)
public struct MISOAppAboutSection: View {

    // MARK: - Properties

    /// App details information
    private let appAbout: MISOAppAbout

    /// A flag for hidden action
    @Binding private var actionTriggered: Bool

    @Environment(\.theme) private var theme

    // MARK: - Initializer

    /// Defines a custom view to display app details information
    ///
    /// - Parameters:
    ///    -  appAbout: Details about the app
    ///    - actionTriggered: A flag to rise have the hidden action has been triggered
    public init(appAbout: MISOAppAbout,
                actionTriggered: Binding<Bool>)
    {
        self.appAbout = appAbout
        _actionTriggered = actionTriggered
    }

    // MARK: - Body

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedMedium) {
            Text(String(localized: "miso.components.appinfo.about.app.title",
                        bundle: Bundle.MISOComponentsMISO))
                .headingSmall(theme)
                .foregroundStyle(theme.colors.contentDefault)

            VStack(alignment: .leading, spacing: theme.spaces.fixedSmall) {
                infoRow(label: String(localized: "miso.components.appinfo.about.version",
                                      bundle: Bundle.MISOComponentsMISO),
                        value: appAbout.version)
                infoRow(label: String(localized: "miso.components.appinfo.about.build",
                                      bundle: Bundle.MISOComponentsMISO), value: appAbout.buildNumber)
                if let tag = appAbout.releaseTag {
                    infoRow(label: String(localized: "miso.components.appinfo.about.tag",
                                          bundle: Bundle.MISOComponentsMISO), value: tag)
                }
            }
            .background(
                RoundedRectangle(cornerRadius: theme.borders.radiusMedium)
                    .fill(Color(uiColor: .secondarySystemGroupedBackground)))

            BuildTypeRow(
                buildTypeInfo: appAbout.buildInfo,
                actionTriggered: $actionTriggered)
        }
    }
}
#endif
