// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

#if !os(macOS) && !os(tvOS) && !os(visionOS) && !os(watchOS)

import MISOComponents
import MISOFoundationsMISO
import MISOThemesContract
import SwiftUI

/// Legal section with links to the privacy policy and terms of use.
///
/// Opens web links in-app via `SafariView`.
/// Can be embedded in any view; manages its own in-app browser state.
///
/// # Code samples
///
/// ```swift
///    let myAppLegalInfo = MISOAppLegalInfo(privacyStatement: privacyStatementURL, termsOfUses: termsOfUsesURL)
///    MISOAppLegalSection(appLegal: legalInfo)
/// ```
///
/// - Since:1.1.0
@available(iOS 15, *)
@available(macOS, unavailable) // Need to find something else than Safari View stuff
@available(tvOS, unavailable)
@available(visionOS, unavailable)
@available(watchOS, unavailable)
public struct MISOAppLegalSection: View {

    // MARK: - Properties

    /// Any legal information to display, or hyperlinks to resources
    private let legalInfo: MISOAppLegalInfo

    /// In-app Safari sheet state, managed locally.
    @State private var safariURL: IdentifiableURL?

    @Environment(\.theme) private var theme

    // MARK: - Initializer

    /// Defines a view with details to show and URL to open
    ///
    /// - Parameter appLegal:The legal resources
    public init(appLegal: MISOAppLegalInfo) {
        legalInfo = appLegal
        safariURL = nil
    }

    // MARK: - Body

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedMedium) {
            Text(String(localized: "miso.components.appinfo.legal.title", bundle: Bundle.MISOComponentsMISO))
                .headingSmall(theme)
                .foregroundStyle(theme.colors.contentDefault)

            VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {

                settingsRow(theme,
                            icon: "hand.raised",
                            label: String(localized: "miso.components.appinfo.legal.privacy",
                                          bundle: Bundle.MISOComponentsMISO))
                {
                    safariURL = IdentifiableURL(legalInfo.privacyStatement)
                }

                MISOHorizontalDivider(color: .brandPrimary)

                settingsRow(theme,
                            icon: "doc.text",
                            label: String(localized: "miso.components.appinfo.legal.terms",
                                          bundle: Bundle.MISOComponentsMISO))
                {
                    safariURL = IdentifiableURL(legalInfo.termsOfUses)
                }
            }
            .background(
                RoundedRectangle(cornerRadius: theme.borders.radiusMedium)
                    .fill(Color(uiColor: .secondarySystemGroupedBackground)))
        }
        .sheet(item: $safariURL) { item in
            SafariView(url: item.url)
                .ignoresSafeArea()
        }
    }
}
#endif
