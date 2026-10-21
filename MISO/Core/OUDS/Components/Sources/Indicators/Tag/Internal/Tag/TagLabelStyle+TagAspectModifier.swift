// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOThemesContract
import MISOTokensSemantic
import SwiftUI

struct TagAspectModifier: ViewModifier {

    let appearance: MISOTag.Appearance
    let shape: MISOTag.Shape
    let type: MISOTag.`Type`

    @Environment(\.theme) private var theme
    @Environment(\.skeletonState) private var skeletonState

    func body(content: Content) -> some View {
        if skeletonState == nil {
            content
                .modifier(TagBackgroundModifier(appearance: appearance, type: type))
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        } else {
            content.skeleton(shape: RoundedRectangle(cornerRadius: cornerRadius))
        }
    }

    private var cornerRadius: CGFloat {
        switch shape {
        case .square:
            theme.borders.radiusNone
        case .rounded:
            theme.tag.borderRadius
        }
    }
}
