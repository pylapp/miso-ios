// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensComponent
import MISOTokensRaw
import MISOTokensSemantic

extension BlueCoatThemeBulletListComponentTokensProvider: BulletListComponentTokens {
    /// Has for value token spaces.columnGapSmall (= 8)
    @objc open var spaceColumnGapBodyLarge: SpaceSemanticToken { spaces.columnGapSmall }
    /// Has for value token spaces.columnGapSmall (= 8)
    @objc open var spaceColumnGapBodyMedium: SpaceSemanticToken { spaces.columnGapSmall }
    /// Has for value token spaces.paddingBlock2xsmall (= 6)
    @objc open var spacePaddingBlockBodyLarge: SpaceSemanticToken { spaces.paddingBlock2xsmall }
    /// Has for value token spaces.paddingBlock2xsmall (= 6)
    @objc open var spacePaddingBlockBodyMedium: SpaceSemanticToken { spaces.paddingBlock2xsmall }
    /// Has for value token DimensionRawTokens._50 (= 4)
    @objc open var spacePaddingInlineLevel0: SpaceSemanticToken { DimensionRawTokens._50 }
    /// Has for value token DimensionRawTokens._450 (= 36)
    @objc open var spacePaddingInlineLevel1: SpaceSemanticToken { DimensionRawTokens._450 }
    /// Has for value token DimensionRawTokens._850 (= 68)
    @objc open var spacePaddingInlineLevel2: SpaceSemanticToken { DimensionRawTokens._850 }
}
