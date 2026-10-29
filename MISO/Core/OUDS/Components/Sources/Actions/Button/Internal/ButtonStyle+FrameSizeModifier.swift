// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOThemesContract
import MISOTokensComponent
import MISOTokensSemantic
import SwiftUI

/// Used to apply the frame size limits (min width, max width, min height)
struct ButtonFrameSizeModifier: ViewModifier {

    // MARK: Stored Properties

    let size: MISOButton.Size
    let isFullWidth: Bool

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        if #available(iOS 16, *) {
            if isFullWidth {
                content.frame(minWidth: minWidth, maxWidth: .infinity, minHeight: minHeight)
            } else {
                content.limitedWidth(minWidth: minWidth, maxWidth: maxWidth, minHeight: minHeight)
            }
        } else {
            content.frame(minWidth: minWidth,
                          maxWidth: isFullWidth ? .infinity : maxWidth,
                          minHeight: minHeight)
        }
    }

    // MARK: Private helpers

    private var minWidth: CGFloat {
        switch size {
        case .default:
            theme.button.sizeMinWidthDefault
        case .small:
            theme.button.sizeMinWidthSmall
        }
    }

    private var minHeight: CGFloat {
        switch size {
        case .default:
            theme.button.sizeMinHeightDefault
        case .small:
            theme.button.sizeMinHeightSmall
        }
    }

    private var maxWidth: CGFloat {
        theme.button.sizeMaxWidth
    }
}
