// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOThemesMISOBlueCoat
import MISOTokensRaw
import MISOTokensSemantic

/// Semantic color token provider for the FoxyRough theme.
/// Subclasses `DefaultColorSemanticTokensProvider`, i.e. `BlueCoatColorSemanticTokensProvider`.
///
/// - Since: 1.1.0
open class FoxyRoughColorTokensProvider: DefaultColorSemanticTokensProvider {

    // MARK: - Lifecycle

    deinit {}

    // MARK: - Background

    override open var bgPrimary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.concreteGrey, dark: FoxyRoughColors.nearBlack)
    }

    override open var bgSecondary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.softGrey, dark: FoxyRoughColors.deepGrey)
    }

    // MARK: - Surface

    override open var surfaceStatusAccentEmphasized: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    // MARK: - Content

    override open var contentDefault: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.nearBlack, dark: FoxyRoughColors.concreteGrey)
    }

    override open var contentMuted: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.mutedLight, dark: FoxyRoughColors.mutedDark)
    }

    override open var contentBrandPrimary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    override open var contentStatusAccent: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    override open var contentOnStatusAccentEmphasized: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.concreteGrey, dark: FoxyRoughColors.black)
    }

    override open var contentOnBrandPrimary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.concreteGrey, dark: FoxyRoughColors.black)
    }

    // MARK: - Action

    override open var actionEnabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    override open var actionPressed: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.darkBloodRed, dark: FoxyRoughColors.darkVividRed)
    }

    override open var actionFocus: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    override open var actionLoading: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    override open var actionSelected: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    // MARK: - Surface

    override open var surfaceBrandPrimary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    // MARK: - Border

    override open var borderDefault: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.borderLight, dark: FoxyRoughColors.borderDark)
    }

    override open var borderBrandPrimary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }
}
