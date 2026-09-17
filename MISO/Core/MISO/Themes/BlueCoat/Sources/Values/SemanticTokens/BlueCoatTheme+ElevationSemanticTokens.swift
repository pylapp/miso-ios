// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensRaw
import MISOTokensSemantic

extension BlueCoatThemeElevationSemanticTokensProvider: ElevationSemanticTokens {
    /// Has for value token ElevationRawTokens.blur400 (= 4)
    @objc open var blurDrag: ElevationBlurSemanticToken { ElevationRawTokens.blur400 }
    /// Has for value token ElevationRawTokens.blur300 (= 3)
    @objc open var blurElevated: ElevationBlurSemanticToken { ElevationRawTokens.blur300 }
    /// Has for value token ElevationRawTokens.blur600 (= 12)
    @objc open var blurEmphasized: ElevationBlurSemanticToken { ElevationRawTokens.blur600 }
    /// Has for value token ElevationRawTokens.blur0 (= 0)
    @objc open var blurNone: ElevationBlurSemanticToken { ElevationRawTokens.blur0 }
    /// Has for value token ElevationRawTokens.blur200 (= 2)
    @objc open var blurRaised: ElevationBlurSemanticToken { ElevationRawTokens.blur200 }
    /// Has for value token ElevationRawTokens.blur400 (= 4)
    @objc open var blurSticky: ElevationBlurSemanticToken { ElevationRawTokens.blur400 }
    /// Has for value token ColorRawTokens.opacityBlack320 (= "#00000052")
    @objc open var colorDragDark: ElevationColorSemanticToken { ColorRawTokens.opacityBlack320 }
    /// Has for value token ColorRawTokens.opacityBlack240 (= "#0000003D")
    @objc open var colorDragLight: ElevationColorSemanticToken { ColorRawTokens.opacityBlack240 }
    /// Has for value token ColorRawTokens.opacityBlack240 (= "#0000003D")
    @objc open var colorElevatedDark: ElevationColorSemanticToken { ColorRawTokens.opacityBlack240 }
    /// Has for value token ColorRawTokens.opacityBlack240 (= "#0000003D")
    @objc open var colorElevatedLight: ElevationColorSemanticToken { ColorRawTokens.opacityBlack240 }
    /// Has for value token ColorRawTokens.opacityBlack160 (= "#00000029")
    @objc open var colorEmphasizedDark: ElevationColorSemanticToken { ColorRawTokens.opacityBlack160 }
    /// Has for value token ColorRawTokens.opacityBlack160 (= "#00000029")
    @objc open var colorEmphasizedLight: ElevationColorSemanticToken { ColorRawTokens.opacityBlack160 }
    /// Has for value token ColorRawTokens.opacityBlack0 (= "#00000000")
    @objc open var colorNone: ElevationColorSemanticToken { ColorRawTokens.opacityBlack0 }
    /// Has for value token ColorRawTokens.opacityBlack320 (= "#00000052")
    @objc open var colorRaisedDark: ElevationColorSemanticToken { ColorRawTokens.opacityBlack320 }
    /// Has for value token ColorRawTokens.opacityBlack240 (= "#0000003D")
    @objc open var colorRaisedLight: ElevationColorSemanticToken { ColorRawTokens.opacityBlack240 }
    /// Has for value token ColorRawTokens.opacityBlack160 (= "#00000029")
    @objc open var colorStickyDark: ElevationColorSemanticToken { ColorRawTokens.opacityBlack160 }
    /// Has for value token ColorRawTokens.opacityBlack160 (= "#00000029")
    @objc open var colorStickyLight: ElevationColorSemanticToken { ColorRawTokens.opacityBlack160 }
    /// Has for value token ElevationRawTokens.x0 (= 0)
    @objc open var xDrag: ElevationXSemanticToken { ElevationRawTokens.x0 }
    /// Has for value token ElevationRawTokens.x0 (= 0)
    @objc open var xElevated: ElevationXSemanticToken { ElevationRawTokens.x0 }
    /// Has for value token ElevationRawTokens.x0 (= 0)
    @objc open var xEmphasized: ElevationXSemanticToken { ElevationRawTokens.x0 }
    /// Has for value token ElevationRawTokens.x0 (= 0)
    @objc open var xNone: ElevationXSemanticToken { ElevationRawTokens.x0 }
    /// Has for value token ElevationRawTokens.x0 (= 0)
    @objc open var xRaised: ElevationXSemanticToken { ElevationRawTokens.x0 }
    /// Has for value token ElevationRawTokens.x0 (= 0)
    @objc open var xSticky: ElevationXSemanticToken { ElevationRawTokens.x0 }
    /// Has for value token ElevationRawTokens.y300 (= 4)
    @objc open var yDrag: ElevationYSemanticToken { ElevationRawTokens.y300 }
    /// Has for value token ElevationRawTokens.y200 (= 2)
    @objc open var yElevated: ElevationYSemanticToken { ElevationRawTokens.y200 }
    /// Has for value token ElevationRawTokens.y500 (= 12)
    @objc open var yEmphasized: ElevationYSemanticToken { ElevationRawTokens.y500 }
    /// Has for value token ElevationRawTokens.y0 (= 0)
    @objc open var yNone: ElevationYSemanticToken { ElevationRawTokens.y0 }
    /// Has for value token ElevationRawTokens.y100 (= 1)
    @objc open var yRaised: ElevationYSemanticToken { ElevationRawTokens.y100 }
    /// Has for value token ElevationRawTokens.y300 (= 4)
    @objc open var ySticky: ElevationYSemanticToken { ElevationRawTokens.y300 }
}
