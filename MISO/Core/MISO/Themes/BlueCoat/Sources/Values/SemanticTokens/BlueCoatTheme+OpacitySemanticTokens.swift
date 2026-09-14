// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensRaw
import MISOTokensSemantic

extension BlueCoatThemeOpacitySemanticTokensProvider: OpacitySemanticTokens {
    /// Has for value token OpacityRawTokens._200 (= 0.2)
    @objc open var disabled: OpacitySemanticToken { OpacityRawTokens._200 }
    /// Has for value token OpacityRawTokens._0 (= 0)
    @objc open var invisible: OpacitySemanticToken { OpacityRawTokens._0 }
    /// Has for value token OpacityRawTokens._560 (= 0.56)
    @objc open var medium: OpacitySemanticToken { OpacityRawTokens._560 }
    /// Has for value token OpacityRawTokens._1000 (= 1)
    @objc open var opaque: OpacitySemanticToken { OpacityRawTokens._1000 }
    /// Has for value token OpacityRawTokens._640 (= 0.64)
    @objc open var strong: OpacitySemanticToken { OpacityRawTokens._640 }
    /// Has for value token OpacityRawTokens._320 (= 0.32)
    @objc open var weak: OpacitySemanticToken { OpacityRawTokens._320 }
    /// Has for value token OpacityRawTokens._160 (= 0.16)
    @objc open var weaker: OpacitySemanticToken { OpacityRawTokens._160 }
    /// Has for value token OpacityRawTokens._40 (= 0.04)
    @objc open var weakest: OpacitySemanticToken { OpacityRawTokens._40 }
}
