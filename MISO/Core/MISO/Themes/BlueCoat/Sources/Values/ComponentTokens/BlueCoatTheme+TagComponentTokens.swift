// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensComponent
import MISOTokensRaw
import MISOTokensSemantic

extension BlueCoatThemeTagComponentTokensProvider: TagComponentTokens {
    /// Has for value token borders.radiusPill (= 2000)
    @objc open var borderRadius: BorderRadiusSemanticToken { borders.radiusPill }
    /// Has for value token sizes.iconWithLabelMediumSizeSmall (= 16)
    @objc open var sizeAssetDefault: SizeSemanticToken { sizes.iconWithLabelMediumSizeSmall }
    /// Has for value token sizes.iconWithLabelSmallSizeSmall (= 12)
    @objc open var sizeAssetSmall: SizeSemanticToken { sizes.iconWithLabelSmallSizeSmall }
    /// Has for value token dimensions._xsmall (= 32)
    @objc open var sizeMinHeightDefault: SizeSemanticToken { dimensions._xsmall }
    /// Has for value token sizes.minInteractiveAreaDefault (= 48)
    @objc open var sizeMinHeightInteractiveArea: SizeSemanticToken { sizes.minInteractiveAreaDefault }
    /// Has for value token dimensions._3xsmall (= 24)
    @objc open var sizeMinHeightSmall: SizeSemanticToken { dimensions._3xsmall }
    /// Has for value token dimensions._xsmall (= 32)
    @objc open var sizeMinWidthDefault: SizeSemanticToken { dimensions._xsmall }
    /// Has for value token dimensions._3xsmall (= 24)
    @objc open var sizeMinWidthSmall: SizeSemanticToken { dimensions._3xsmall }
    /// Has for value token spaces.columnGap2xsmall (= 4)
    @objc open var spaceColumnGapDefault: SpaceSemanticToken { spaces.columnGap2xsmall }
    /// Has for value token spaces.columnGap2xsmall (= 4)
    @objc open var spaceColumnGapSmall: SpaceSemanticToken { spaces.columnGap2xsmall }
    /// Has for value token DimensionRawTokens.outOfSystem75 (= 3)
    @objc open var spaceInsetBulletDefault: SpaceSemanticToken { DimensionRawTokens.outOfSystem75 }
    /// Has for value token spaces.inset4xsmall (= 2)
    @objc open var spaceInsetBulletSmall: SpaceSemanticToken { spaces.inset4xsmall }
    /// Has for value token spaces.inset5xsmall (= 1)
    @objc open var spaceInsetIconDefault: SpaceSemanticToken { spaces.inset5xsmall }
    /// Has for value token spaces.insetNone (= 0)
    @objc open var spaceInsetIconSmall: SpaceSemanticToken { spaces.insetNone }
    /// Has for value token spaces.inset4xsmall (= 2)
    @objc open var spaceInsetProgressIndicatorDefault: SpaceSemanticToken { spaces.inset4xsmall }
    /// Has for value token spaces.inset5xsmall (= 1)
    @objc open var spaceInsetProgressIndicatorSmall: SpaceSemanticToken { spaces.inset5xsmall }
    /// Has for value token spaces.paddingBlock2xsmall (= 6)
    @objc open var spacePaddingBlockDefault: SpaceSemanticToken { spaces.paddingBlock2xsmall }
    /// Has for value token spaces.paddingBlock3xsmall (= 4)
    @objc open var spacePaddingBlockSmall: SpaceSemanticToken { spaces.paddingBlock3xsmall }
    /// Has for value token spaces.paddingInlineXsmall (= 8)
    @objc open var spacePaddingInlineAssetDefault: SpaceSemanticToken { spaces.paddingInlineXsmall }
    /// Has for value token spaces.paddingInline2xsmall (= 6)
    @objc open var spacePaddingInlineAssetSmall: SpaceSemanticToken { spaces.paddingInline2xsmall }
    /// Has for value token spaces.paddingInlineMedium (= 12)
    @objc open var spacePaddingInlineDefault: SpaceSemanticToken { spaces.paddingInlineMedium }
    /// Has for value token spaces.paddingInlineSmall (= 10)
    @objc open var spacePaddingInlineSmall: SpaceSemanticToken { spaces.paddingInlineSmall }
}
