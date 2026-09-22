// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensRaw
import MISOTokensSemantic

extension BlueCoatThemeBorderSemanticTokensProvider: BorderSemanticTokens {
    /// Has for value token BorderRawTokens.radius150 (= 6)
    @objc open var radiusDefault: BorderRadiusSemanticToken { BorderRawTokens.radius150 }
    /// Has for value token BorderRawTokens.radius300 (= 12)
    @objc open var radiusLarge: BorderRadiusSemanticToken { BorderRawTokens.radius300 }
    /// Has for value token BorderRawTokens.radius200 (= 8)
    @objc open var radiusMedium: BorderRadiusSemanticToken { BorderRawTokens.radius200 }
    /// Has for value token BorderRawTokens.radius0 (= 0)
    @objc open var radiusNone: BorderRadiusSemanticToken { BorderRawTokens.radius0 }
    /// Has for value token BorderRawTokens.radius9999 (= 2000)
    @objc open var radiusPill: BorderRadiusSemanticToken { BorderRawTokens.radius9999 }
    /// Has for value token BorderRawTokens.radius75 (= 3)
    @objc open var radiusSmall: BorderRadiusSemanticToken { BorderRawTokens.radius75 }
    /// Has for value token BorderRawTokens.styleSolid (= "solid")
    @objc open var styleDefault: BorderStyleSemanticToken { BorderRawTokens.styleSolid }
    /// Has for value token BorderRawTokens.styleDashed (= "dashed")
    @objc open var styleDrag: BorderStyleSemanticToken { BorderRawTokens.styleDashed }
    /// Has for value token BorderRawTokens.width50 (= 2)
    @objc open var widthDefault: BorderWidthSemanticToken { BorderRawTokens.width50 }
    /// Has for value token BorderRawTokens.width125 (= 5)
    @objc open var widthFocus: BorderWidthSemanticToken { BorderRawTokens.width125 }
    /// Has for value token BorderRawTokens.width50 (= 2)
    @objc open var widthFocusInset: BorderWidthSemanticToken { BorderRawTokens.width50 }
    /// Has for value token BorderRawTokens.width75 (= 3)
    @objc open var widthMedium: BorderWidthSemanticToken { BorderRawTokens.width75 }
    /// Has for value token BorderRawTokens.width0 (= 0)
    @objc open var widthNone: BorderWidthSemanticToken { BorderRawTokens.width0 }
    /// Has for value token BorderRawTokens.width100 (= 4)
    @objc open var widthThick: BorderWidthSemanticToken { BorderRawTokens.width100 }
    /// Has for value token BorderRawTokens.width150 (= 6)
    @objc open var widthThicker: BorderWidthSemanticToken { BorderRawTokens.width150 }
    /// Has for value token BorderRawTokens.width25 (= 1)
    @objc open var widthThin: BorderWidthSemanticToken { BorderRawTokens.width25 }
}
