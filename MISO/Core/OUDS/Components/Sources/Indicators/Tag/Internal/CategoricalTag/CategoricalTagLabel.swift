// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOTokensSemantic
import SwiftUI

struct CategoricalTagLabel: View {

    // MARK: Properties

    let size: MISOTag.Size
    let label: String
    let isLoading: Bool

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Body

    var body: some View {
        Group {
            switch size {
            case .default:
                Text(label)
                    .labelStrongMedium(theme)
            case .small:
                Text(label)
                    .labelModerateSmall(theme)
            }
        }
        .foregroundColor(contentColor)
    }

    // MARK: Helpers

    private var contentColor: MultipleColorSemanticToken {
        if isLoading {
            return theme.colors.contentDefault
        }
        return isEnabled ? theme.categoricalTag.colorContent : theme.colors.contentOnActionDisabled
    }
}
