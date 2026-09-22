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
///     let myAppEditor = MISOAppEditor(name: editorName, website: (logo: editorLogo, url: editorURL), mastodon: (logo: mastodonLogo, url: editorMastodonURL))
///     MISOAppEditorSection(appEditor: editorInfo)
/// ```
///
/// - Since:1.1.0
@available(iOS 15, *)
@available(macOS, unavailable) // Need to find something else than Safari View stuff
@available(tvOS, unavailable)
@available(visionOS, unavailable)
@available(watchOS, unavailable)
public struct MISOAppEditorSection: View {

    // MARK: - Properties

    /// App editor information
    private let appEditor: MISOAppEditor

    /// In-app Safari sheet state, managed locally.
    @State private var safariURL: IdentifiableURL?

    @Environment(\.theme) private var theme

    // MARK: - Initializer

    /// Defines a custom view to display app editor information
    ///
    /// - Parameter appEditor: The app editor details
    public init(appEditor: MISOAppEditor) {
        self.appEditor = appEditor
        safariURL = nil
    }

    // MARK: - Body

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedMedium) {
            Text("miso.components.appinfo.editor.title",
                 bundle: Bundle.MISOComponentsMISO)
                .headingSmall(theme)
                .foregroundStyle(theme.colors.contentDefault)

            VStack(alignment: .leading, spacing: theme.spaces.fixedSmall) {
                Text(appEditor.name)
                    .bodyStrongLarge(theme)
                    .foregroundStyle(theme.colors.contentDefault)

                MISOLink(
                    "miso.components.appinfo.editor.website",
                    bundle: Bundle.MISOComponentsMISO,
                    image: MISOImage(asset: appEditor.website.logo, renderingMode: .original),
                    size: .default)
                {
                    safariURL = IdentifiableURL(appEditor.website.url)
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                MISOLink(
                    "miso.components.appinfo.editor.mastodon",
                    bundle: Bundle.MISOComponentsMISO,
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
        .sheet(item: $safariURL) { item in
            SafariView(url: item.url)
                .ignoresSafeArea()
        }
    }
}
#endif
