// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOThemesContract
import MISOTokensComponent
import SwiftUI

struct LinkFrameModifier: ViewModifier {

    // MARK: Properties

    let size: MISOLink.Size
    let density: MISOLink.Density
    let isFullWidth: Bool

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .padding(.horizontal, theme.link.spacePaddingInline)
            .padding(.vertical, verticalPadding)
            .frame(minWidth: minWidth, maxWidth: isFullWidth ? .infinity : nil, minHeight: minHeight, alignment: .leading)
            .contentShape(Rectangle())
    }

    // MARK: Helpers

    private var minWidth: Double {
        size == .small ? theme.link.sizeMinWidthSmall : theme.link.sizeMinWidth
    }

    private var minHeight: Double {
        switch density {
        case .default:
            size == .small ? theme.link.sizeMinHeightSmall : theme.link.sizeMinHeightDefault
        case .compact:
            theme.link.sizeMinHeightCompactDensity
        }
    }

    private var verticalPadding: Double {
        switch density {
        case .default:
            size == .small ? theme.link.spacePaddingBlockSmall : theme.link.spacePaddingBlockDefault
        case .compact:
            size == .small ? theme.link.spacePaddingBlockCompactDensitySmall : theme.link.spacePaddingBlockCompactDensityDefault
        }
    }
}
