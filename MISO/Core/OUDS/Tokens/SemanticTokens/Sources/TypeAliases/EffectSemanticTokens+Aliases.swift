// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import CoreGraphics // Needed for XCFramework generation and API breaks checks
import MISOTokensRaw

/// Basically a semantic token for effect is a raw token for effect, to keep grammar clean and clear with design system grammar.
public typealias EffectSemanticToken = EffectRawToken
