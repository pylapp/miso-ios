// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensRaw
import MISOTokensSemantic

extension BlueCoatThemeEffectSemanticTokensProvider: EffectSemanticTokens {
    /// Has for value token EffectRawTokens.blur80 (= 8)
    @objc open var blurBackdrop: EffectSemanticToken { EffectRawTokens.blur80 }
    /// Has for value token EffectRawTokens.blur480 (= 48)
    @objc open var blurDrag: EffectSemanticToken { EffectRawTokens.blur480 }
}
