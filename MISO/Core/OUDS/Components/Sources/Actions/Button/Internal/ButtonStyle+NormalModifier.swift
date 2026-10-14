// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOThemesContract
import MISOTokensSemantic
import SwiftUI

// MARK: - Button Internal State

/// The internal state used by modifiers to handle all states of the button.
enum ButtonInternalState {
    case enabled, hover, pressed, loading, disabled
}

// MARK: - Button View Modifier

/// This modifier has in charge to:
/// - compute the internal state based on `isEnabled`, `isPressed` and `isHover` flags
/// - apply foreground, background colors and add a border (width, radius and color) associated to the appearance and according to the internal state
struct ButtonViewModifier: ViewModifier {

    // MARK: Properties

    let appearance: MISOButton.Appearance
    let state: ButtonInternalState

    @Environment(\.skeletonState) private var skeletonState
    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        // check skeleton state here for eco-conception (avoid to apply content modifiers)
        if skeletonState == nil {
            content
                .modifier(ButtonForegroundModifier(appearance: appearance, state: state))
                .modifier(ButtonBackgroundModifier(appearance: appearance, state: state))
                .modifier(ButtonBorderModifier(appearance: appearance, state: state))
        } else {
            content.skeleton(shape: RoundedRectangle(cornerRadius: radius))
        }
    }

    private var radius: BorderRadiusSemanticToken {
        theme.tuning.hasRoundedButtons ? theme.button.borderRadiusRounded : theme.button.borderRadiusDefault
    }
}
