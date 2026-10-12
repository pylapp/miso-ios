// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOTokensSemantic
import SwiftUI

struct CategoricalTagIcon: View {

    // MARK: Properties

    let size: MISOTag.Size
    let leading: MISOCategoricalTag.Leading

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Body

    var body: some View {
        iconContent?
            .renderingMode(appliedRenderingMode)
            .resizable()
            .toFlip(flipped)
            .foregroundColor(contentColor)
            .padding(.all, padding)
    }

    // MARK: Helpers

    private var iconContent: Image? {
        switch leading {
        case .none:
            nil
        case .bullet:
            Image(decorative: "ic_tag_bullet", bundle: theme.resourcesBundle)
        case let .icon(misoImage):
            misoImage.asset
        }
    }

    private var appliedRenderingMode: Image.TemplateRenderingMode {
        if case let .icon(misoImage) = leading {
            return misoImage.renderingMode
        }
        return .template
    }

    private var flipped: Bool {
        if case let .icon(misoImage) = leading {
            return misoImage.flipped
        }
        return false
    }

    private var contentColor: MultipleColorSemanticToken {
        isEnabled ? theme.categoricalTag.colorContent : theme.colors.contentOnActionDisabled
    }

    private var padding: CGFloat {
        switch leading {
        case .none:
            0
        case .bullet:
            switch size {
            case .default:
                theme.tag.spaceInsetBulletDefault
            case .small:
                theme.tag.spaceInsetBulletSmall
            }
        case .icon:
            switch size {
            case .default:
                theme.tag.spaceInsetIconDefault
            case .small:
                theme.tag.spaceInsetIconSmall
            }
        }
    }
}
