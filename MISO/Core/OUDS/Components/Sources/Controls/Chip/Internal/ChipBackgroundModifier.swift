// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOThemesContract
import MISOTokensComponent
import MISOTokensSemantic
import SwiftUI

/// Used to apply the right background color associated to the state
struct ChipBackgroundModifier: ViewModifier {

    // MARK: Stored Properties

    let state: MISOChipInteractionState
    let selected: Bool

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        content.background(appliedColor)
    }

    // MARK: Private helpers

    private var appliedColor: MultipleColorSemanticToken {
        switch state {
        case .enabled:
            selected ? theme.chip.colorBgSelectedEnabled : theme.chip.colorBgUnselectedEnabled
        case .hover:
            selected ? theme.chip.colorBgSelectedHover : theme.chip.colorBgUnselectedHover
        case .pressed:
            selected ? theme.chip.colorBgSelectedPressed : theme.chip.colorBgUnselectedPressed
        case .disabled:
            selected ? theme.chip.colorBgSelectedDisabled : theme.chip.colorBgUnselectedDisabled
        }
    }
}
