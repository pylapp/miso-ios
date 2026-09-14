// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensComponent
import MISOTokensRaw
import MISOTokensSemantic

extension BlueCoatThemeAlertComponentTokensProvider: AlertComponentTokens {
    /// Has for value token borders.radiusDefault (= 6)
    @objc open var borderRadiusDefault: BorderRadiusSemanticToken { borders.radiusDefault }
    /// Has for value token borders.radiusLarge (= 12)
    @objc open var borderRadiusRounded: BorderRadiusSemanticToken { borders.radiusLarge }
    /// Has for value token sizes.iconWithLabelLargeSizeSmall (= 24)
    @objc open var sizeAsset: SizeSemanticToken { sizes.iconWithLabelLargeSizeSmall }
    /// Has for value token sizes.minInteractiveAreaDefault (= 48)
    @objc open var sizeMinHeight: SizeSemanticToken { sizes.minInteractiveAreaDefault }
    /// Has for value token DimensionRawTokens._1000 (= 80)
    @objc open var sizeMinHeightBottomAction: SizeSemanticToken { DimensionRawTokens._1000 }
    /// Has for value token DimensionRawTokens._2000 (= 160)
    @objc open var sizeMinWidth: SizeSemanticToken { DimensionRawTokens._2000 }
    /// Has for value token spaces.columnGapMedium (= 12)
    @objc open var spaceColumnGap: SpaceSemanticToken { spaces.columnGapMedium }
    /// Has for value token spaces.columnGapSmall (= 8)
    @objc open var spaceColumnGapAction: SpaceSemanticToken { spaces.columnGapSmall }
    /// Has for value token spaces.inset4xsmall (= 2)
    @objc open var spaceInsetProgressIndicator: SpaceSemanticToken { spaces.inset4xsmall }
    /// Has for value token spaces.paddingBlockMedium (= 12)
    @objc open var spacePaddingBlock: SpaceSemanticToken { spaces.paddingBlockMedium }
    /// Has for value token spaces.paddingBlock3xsmall (= 4)
    @objc open var spacePaddingBlockBottomContent: SpaceSemanticToken { spaces.paddingBlock3xsmall }
    /// Has for value token spaces.paddingInlineLarge (= 16)
    @objc open var spacePaddingInline: SpaceSemanticToken { spaces.paddingInlineLarge }
    /// Has for value token spaces.rowGap2xsmall (= 4)
    @objc open var spaceRowGap: SpaceSemanticToken { spaces.rowGap2xsmall }
}
