// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensRaw
import MISOTokensSemantic

/// Defines basic values common to all themes for `ElevationCompositeSemanticTokens``.
/// These values can be overridden inside ``BlueCoatThemeElevationSemanticTokensProvider`` subclasses
/// (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
/// The aim of this extension is to make relationships between all semantic tokens for elevations and associated raw tokens.
/// The *tokenator* is not able to provide code for such "composite" objects because the *Figma* tool itself cannot manage that and does not output anything in its JSON to process.
/// It defines in fact box shadows effects.
extension BlueCoatThemeElevationSemanticTokensProvider: ElevationCompositeSemanticTokens {

    @objc open var none: ElevationCompositeSemanticToken {
        MultipleElevationCompositeRawToken(ElevationCompositeRawToken(x: xNone, y: yNone, blur: blurNone, color: colorNone))
    }

    @objc open var raised: ElevationCompositeSemanticToken {
        MultipleElevationCompositeRawToken(light: ElevationCompositeRawToken(x: xRaised, y: yRaised, blur: blurRaised, color: colorRaisedLight),
                                           dark: ElevationCompositeRawToken(x: xRaised, y: yRaised, blur: blurRaised, color: colorRaisedDark))
    }

    @objc open var drag: ElevationCompositeSemanticToken {
        MultipleElevationCompositeRawToken(light: ElevationCompositeRawToken(x: xDrag, y: yDrag, blur: blurDrag, color: colorDragLight),
                                           dark: ElevationCompositeRawToken(x: xDrag, y: yDrag, blur: blurDrag, color: colorDragDark))
    }

    @objc open var `default`: ElevationCompositeSemanticToken {
        MultipleElevationCompositeRawToken(light: ElevationCompositeRawToken(x: xElevated, y: yElevated, blur: blurElevated, color: colorElevatedLight),
                                           dark: ElevationCompositeRawToken(x: xElevated, y: yElevated, blur: blurElevated, color: colorElevatedDark))
    }

    @objc open var emphasized: ElevationCompositeSemanticToken {
        MultipleElevationCompositeRawToken(light: ElevationCompositeRawToken(x: xEmphasized, y: yEmphasized, blur: blurEmphasized, color: colorEmphasizedLight),
                                           dark: ElevationCompositeRawToken(x: xEmphasized, y: yEmphasized, blur: blurEmphasized, color: colorEmphasizedDark))
    }

    @objc open var sticky: ElevationCompositeSemanticToken {
        MultipleElevationCompositeRawToken(light: ElevationCompositeRawToken(x: xSticky, y: ySticky, blur: blurSticky, color: colorStickyLight),
                                           dark: ElevationCompositeRawToken(x: xSticky, y: ySticky, blur: blurSticky, color: colorStickyDark))
    }
}
