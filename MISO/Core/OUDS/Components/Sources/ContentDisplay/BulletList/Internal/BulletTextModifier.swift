// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOTokensSemantic
import SwiftUI

// MARK: Bullet List Label

struct BulletListLabel: View {

    // MARK: Properties

    let label: TextualContent
    let textStyle: MISOBulletList.TextStyle
    let isBold: Bool

    // MARK: - Body

    var body: some View {
        textView(for: label)
            .modifier(BulletTextModifier(textStyle: textStyle, isBold: isBold))
            .modifier(FrameModifier(textStyle: textStyle))
    }
}

// MARK: - Bullet Text Modifier

struct BulletTextModifier: ViewModifier {

    // MARK: Properties

    let textStyle: MISOBulletList.TextStyle
    let isBold: Bool

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        switch textStyle {
        case .bodyLarge:
            if isBold {
                content.bodyStrongLarge(theme)
            } else {
                content.bodyDefaultLarge(theme)
            }
        case .bodyMedium:
            if isBold {
                content.bodyStrongMedium(theme)
            } else {
                content.bodyDefaultMedium(theme)
            }
        }
    }
}

struct FrameModifier: ViewModifier {

    let textStyle: MISOBulletList.TextStyle

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    func body(content: Content) -> some View {
        if #available(iOS 16, *) {
            content
                .limitedWidth(minWidth: 0,
                              maxWidth: maxWidth.dimension(for: horizontalSizeClass ?? .regular),
                              minHeight: 0)
        } else {
            content
                .frame(maxWidth: maxWidth.dimension(for: horizontalSizeClass ?? .regular), alignment: .leading)
        }
    }

    private var maxWidth: MultipleSizeSemanticToken {
        switch textStyle {
        case .bodyLarge:
            theme.sizes.maxWidthBodyLarge
        case .bodyMedium:
            theme.sizes.maxWidthBodyMedium
        }
    }
}
