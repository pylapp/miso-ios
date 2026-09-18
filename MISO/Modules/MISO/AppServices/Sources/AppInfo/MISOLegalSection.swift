// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

#if os(iOS)
import MISOComponents
import MISOFoundationsMISO
import MISOThemesContract
import SwiftUI

// MARK: - Legal Section View

/// Legal section with links to the privacy policy and terms of use.
///
/// Opens web links in-app via ``SafariView``.
/// Can be embedded in any view; manages its own in-app browser state.
///
/// # Code samples
///
/// ```swift
///    // Give to the view the URL to the documents
///    MISOLegalSection(privacyURL: URL(string: somePrivacyDocumentUrl)!,
///                     termsURL: URL(string: someToSDocumentUrl)!)
/// ```
///
/// - Since:1.1.0
@available(iOS 15, *)
@available(macOS, unavailable) // Need to find something else than Safari View stuff
public struct MISOLegalSection: View { // TODO: Check with watchOS, visionOS, tvOS, iPadOS

    // MARK: - Properties

    /// URL of the privacy statement
    private let privacyURL: URL

    /// URL of the terms of uses
    private let termsURL: URL

    /// In-app Safari sheet state, managed locally.
    @State private var safariURL: IdentifiableURL?

    @Environment(\.theme) private var theme

    // MARK: - Initializer

    /// Defines a view with URL to open
    ///
    /// - Parameters:
    ///    - privacyURL: The URL of the privacy statement page
    ///    - termsURL: The URL of the terms of sues
    public init(privacyURL: URL, termsURL: URL) {
        self.privacyURL = privacyURL
        self.termsURL = termsURL
        safariURL = nil
    }

    // MARK: - Body

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedMedium) {
            Text(String(localized: "miso.module.appservices.settings.section.legal", bundle: Bundle.MISOModulesAppServices))
                .headingSmall(theme)
                .foregroundStyle(theme.colors.contentDefault)

            VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {

                settingsRow(theme,
                            icon: "hand.raised",
                            label: String(localized: "miso.module.appservices.settings.legal.privacy",
                                          bundle: Bundle.MISOModulesAppServices))
                {
                    safariURL = IdentifiableURL(privacyURL)
                }

                MISOHorizontalDivider(color: .brandPrimary)

                settingsRow(theme,
                            icon: "doc.text",
                            label: String(localized: "miso.module.appservices.settings.legal.terms",
                                          bundle: Bundle.MISOModulesAppServices))
                {
                    safariURL = IdentifiableURL(termsURL)
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
