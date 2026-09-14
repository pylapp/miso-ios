// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensComponent
import MISOTokensRaw
import MISOTokensSemantic

extension BlueCoatThemeTextAreaComponentTokensProvider: TextAreaComponentTokens {
    /// Has for value token DimensionRawTokens._1100 (= 88)
    @objc open var sizeMaxHeightAssetsContainer: SizeSemanticToken { DimensionRawTokens._1100 }
    /// Has for value token DimensionRawTokens._2500 (= 240)
    @objc open var sizeMaxHeightInput: SizeSemanticToken { DimensionRawTokens._2500 }
    /// Has for value token DimensionRawTokens._6000 (= 640)
    @objc open var sizeMaxWidth: SizeSemanticToken { DimensionRawTokens._6000 }
    /// Has for value token DimensionRawTokens._900 (= 72)
    @objc open var sizeMinHeightInput: SizeSemanticToken { DimensionRawTokens._900 }
    /// Has for value token spaces.paddingBlockSmall (= 10)
    @objc open var spacePaddingBlock: SpaceSemanticToken { spaces.paddingBlockSmall }
    /// Has for value token spaces.paddingBlock2xsmall (= 6)
    @objc open var spacePaddingBlockEmptyTrailingContainer: SpaceSemanticToken { spaces.paddingBlock2xsmall }
    /// Has for value token spaces.paddingBlockMedium (= 12)
    @objc open var spacePaddingBlockTopEmpty: SpaceSemanticToken { spaces.paddingBlockMedium }
    /// Has for value token spaces.paddingBlockXsmall (= 8)
    @objc open var spacePaddingBlockTrailingContainer: SpaceSemanticToken { spaces.paddingBlockXsmall }
}
