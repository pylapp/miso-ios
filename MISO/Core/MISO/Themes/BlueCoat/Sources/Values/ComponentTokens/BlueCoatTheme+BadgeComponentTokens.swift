// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensComponent
import MISOTokensRaw
import MISOTokensSemantic

extension BlueCoatThemeBadgeComponentTokensProvider: BadgeComponentTokens {
    /// Has for value token dimensions._4xsmall (= 20)
    @objc open var sizeLarge: SizeSemanticToken { dimensions._4xsmall }
    /// Has for value token dimensions._5xsmall (= 16)
    @objc open var sizeMedium: SizeSemanticToken { dimensions._5xsmall }
    /// Has for value token dimensions._6xsmall (= 12)
    @objc open var sizeSmall: SizeSemanticToken { dimensions._6xsmall }
    /// Has for value token dimensions._8xsmall (= 8)
    @objc open var sizeXsmall: SizeSemanticToken { dimensions._8xsmall }
    /// Has for value token DimensionRawTokens.outOfSystem75 (= 3)
    @objc open var spaceInsetMediumLarge: SpaceSemanticToken { DimensionRawTokens.outOfSystem75 }
    /// Has for value token DimensionRawTokens.outOfSystem50 (= 2)
    @objc open var spaceInsetSmall: SpaceSemanticToken { DimensionRawTokens.outOfSystem50 }
    /// Has for value token DimensionRawTokens.outOfSystem25 (= 1)
    @objc open var spaceInsetXsmall: SpaceSemanticToken { DimensionRawTokens.outOfSystem25 }
    /// Has for value token spaces.paddingInline2xsmall (= 6)
    @objc open var spacePaddingInlineLarge: SpaceSemanticToken { spaces.paddingInline2xsmall }
    /// Has for value token spaces.paddingInline3xsmall (= 4)
    @objc open var spacePaddingInlineMedium: SpaceSemanticToken { spaces.paddingInline3xsmall }
}
