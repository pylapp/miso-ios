// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOTokensSemantic
import SwiftUI

struct CategoricalTagBackgroundModifier: ViewModifier {

    // MARK: Properties

    let category: MISOCategoricalTag.Category
    let isLoading: Bool

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Body

    func body(content: Content) -> some View {
        content.background(backgroundColor)
    }

    // MARK: Helpers

    private var backgroundColor: MultipleColorSemanticToken {
        if isLoading {
            return theme.colors.surfaceSecondary
        }

        if isEnabled {
            switch category {
            case .category1:
                return theme.categoricalTag.colorBgCategory1
            case .category2:
                return theme.categoricalTag.colorBgCategory2
            case .category3:
                return theme.categoricalTag.colorBgCategory3
            case .category4:
                return theme.categoricalTag.colorBgCategory4
            case .category5:
                return theme.categoricalTag.colorBgCategory5
            }
        } else {
            return theme.colors.actionDisabled
        }
    }
}
