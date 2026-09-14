// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensComponent
import MISOTokensSemantic

// swiftlint:disable line_length

extension BlueCoatThemeProgressIndicatorComponentTokensProvider: ProgressIndicatorComponentTokens {
    /// Has for value token borders.radiusPill (= 2000)
    @objc open var borderRadiusDefault: BorderRadiusSemanticToken { borders.radiusPill }
    /// Has for value token borders.radiusPill (= 2000)
    @objc open var borderRadiusRounded: BorderRadiusSemanticToken { borders.radiusPill }
    /// Has for value token MultipleColorSemanticToken(light: BlueCoatBrandColorRawTokens.functionalGrayLight320, dark: BlueCoatBrandColorRawTokens.functionalGrayDark480) (= light: "#CDD3E0FF" / dark: "#374258FF")
    @objc open var colorContentTrack: MultipleColorSemanticToken { MultipleColorSemanticToken(light: BlueCoatBrandColorRawTokens.functionalGrayLight320, dark: BlueCoatBrandColorRawTokens.functionalGrayDark480) }
    /// Has for value token dimensions._10xsmall (= 4)
    @objc open var sizeLinearIndicatorHeight: SizeSemanticToken { dimensions._10xsmall }
    /// Has for value token spaces.columnGapSmall (= 8)
    @objc open var spaceColumnGap: SpaceSemanticToken { spaces.columnGapSmall }
    /// Has for value token spaces.paddingBlockXsmall (= 8)
    @objc open var spacePaddingBlock: SpaceSemanticToken { spaces.paddingBlockXsmall }
}

// swiftlint:enable line_length
