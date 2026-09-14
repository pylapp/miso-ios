// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensComponent
import MISOTokensRaw
import MISOTokensSemantic

extension BlueCoatThemeQuantityInputComponentTokensProvider: QuantityInputComponentTokens {
    /// Has for value token DimensionRawTokens._3000 (= 320)
    @objc open var sizeMaxWidth: SizeSemanticToken { DimensionRawTokens._3000 }
    /// Has for value token DimensionRawTokens._2225 (= 200)
    @objc open var sizeMinWidth: SizeSemanticToken { DimensionRawTokens._2225 }
    /// Has for value token spaces.columnGapXsmall (= 6)
    @objc open var spaceColumnGapDefault: SpaceSemanticToken { spaces.columnGapXsmall }
    /// Has for value token spaces.columnGapMedium (= 12)
    @objc open var spaceColumnGapLeadingIcon: SpaceSemanticToken { spaces.columnGapMedium }
    /// Has for value token DimensionRawTokens.outOfSystem25 (= 1)
    @objc open var spaceColumnGapQuantitySelector: SpaceSemanticToken { DimensionRawTokens.outOfSystem25 }
}
