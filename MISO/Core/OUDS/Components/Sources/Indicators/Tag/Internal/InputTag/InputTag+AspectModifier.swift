// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOThemesContract
import MISOTokensSemantic
import SwiftUI

struct InputTagAspectModifier: ViewModifier {

    let interactionState: MISOButtonInteractionState

    @Environment(\.skeletonState) private var skeletonState
    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        if skeletonState == nil {
            content
                .modifier(InputTagBackgroundModifier(state: interactionState))
                .modifier(InputTagForegroundModifier(state: interactionState))
                .modifier(InputTagBorderModifier(state: interactionState))
        } else {
            content.skeleton(shape: RoundedRectangle(cornerRadius: theme.tag.borderRadius))
        }
    }
}
