// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOTokensSemantic
import SwiftUI

struct CategoricalTagShapeModifier: ViewModifier {

    // MARK: Properties

    let shape: MISOTag.Shape

    @Environment(\.theme) private var theme
    @Environment(\.skeletonState) private var skeletonState

    // MARK: Body

    func body(content: Content) -> some View {
        if skeletonState == nil {
            content
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        } else {
            content
                .skeleton(shape: RoundedRectangle(cornerRadius: cornerRadius))
        }
    }

    // MARK: Helper

    private var cornerRadius: CGFloat {
        switch shape {
        case .square:
            theme.borders.radiusNone
        case .rounded:
            theme.tag.borderRadius
        }
    }
}
