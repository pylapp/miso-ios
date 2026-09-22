// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOThemesMISOBlueCoat
import MISOTokensRaw
import MISOTokensSemantic

/// Custom button component tokens provider for FoxyRough.
///
/// Subclasses `DefaultButtonComponentTokensProvider` (MISO's `BlueCoatTheme` button provider)
/// and overrides three groups of tokens so that `MISOButton` renders with FoxyRough's own
/// palette instead of inheriting BlueCoat's royal-blue brand colours.
///
/// - Since: 1.1.0
open class FoxyRoughButtonTokensProvider: DefaultButtonComponentTokensProvider {

    // MARK: - Lifecycle

    deinit {}

    // MARK: - Colors - Default - Background

    override open var colorBgDefaultEnabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.transparentBlack, dark: FoxyRoughColors.transparentWhite)
    }

    override open var colorBgDefaultHover: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.transparentBlack, dark: FoxyRoughColors.transparentWhite)
    }

    override open var colorBgDefaultPressed: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.transparentBlack, dark: FoxyRoughColors.transparentWhite)
    }

    override open var colorBgDefaultLoading: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.transparentBlack, dark: FoxyRoughColors.transparentWhite)
    }

    override open var colorBgDefaultDisabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.transparentBlack, dark: FoxyRoughColors.transparentWhite)
    }

    // MARK: - Colors - Content

    override open var colorContentDefaultEnabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    override open var colorContentDefaultHover: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    override open var colorContentDefaultPressed: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.darkBloodRed, dark: FoxyRoughColors.darkVividRed)
    }

    override open var colorContentDefaultLoading: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    override open var colorContentDefaultDisabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.mutedLight, dark: FoxyRoughColors.mutedDark)
    }

    override open var colorContentMinimalEnabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    // MARK: - Colors - Default - Border

    override open var colorBorderDefaultEnabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    override open var colorBorderDefaultHover: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    override open var colorBorderDefaultPressed: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.darkBloodRed, dark: FoxyRoughColors.darkVividRed)
    }

    override open var colorBorderDefaultLoading: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    override open var colorBorderDefaultDisabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.mutedLight, dark: FoxyRoughColors.mutedDark)
    }

    override open var borderWidthDefault: BorderWidthSemanticToken {
        BorderRawTokens.width25
    }

    override open var borderWidthDefaultInteraction: BorderWidthSemanticToken {
        BorderRawTokens.width50
    }

    // MARK: - Colors - Brand - Background

    override open var colorBgBrandEnabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.bloodRed, dark: FoxyRoughColors.vividRed)
    }

    override open var colorBgBrandHover: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.darkBloodRed, dark: FoxyRoughColors.darkVividRed)
    }

    override open var colorBgBrandPressed: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.darkBloodRed, dark: FoxyRoughColors.darkVividRed)
    }

    override open var colorBgBrandLoading: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.darkBloodRed, dark: FoxyRoughColors.darkVividRed)
    }

    // MARK: - Colors - Brand - Content

    override open var colorContentBrandEnabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.concreteGrey, dark: FoxyRoughColors.black)
    }

    override open var colorContentBrandHover: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.concreteGrey, dark: FoxyRoughColors.black)
    }

    override open var colorContentBrandPressed: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.concreteGrey, dark: FoxyRoughColors.black)
    }

    override open var colorContentBrandLoading: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.concreteGrey, dark: FoxyRoughColors.black)
    }

    // MARK: - Shape

    override open var borderRadiusRounded: BorderRadiusSemanticToken {
        BorderRawTokens.radius400
    }

    // MARK: - Mono - Background - Strong

    override open var monoColorBgStrongEnabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.nearBlack, dark: FoxyRoughColors.softGrey)
    }

    override open var monoColorBgStrongHover: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.borderDark, dark: FoxyRoughColors.borderLight)
    }

    override open var monoColorBgStrongPressed: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.borderDark, dark: FoxyRoughColors.borderLight)
    }

    override open var monoColorBgStrongLoading: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.nearBlack, dark: FoxyRoughColors.softGrey)
    }

    override open var monoColorBgStrongDisabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.mutedLight, dark: FoxyRoughColors.mutedDark)
    }

    override open var monoColorBgStrongFocus: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.nearBlack, dark: FoxyRoughColors.softGrey)
    }

    // MARK: - Mono - Foreground - Strong

    override open var monoColorContentStrongEnabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.concreteGrey, dark: FoxyRoughColors.nearBlack)
    }

    override open var monoColorContentStrongHover: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.concreteGrey, dark: FoxyRoughColors.nearBlack)
    }

    override open var monoColorContentStrongPressed: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.concreteGrey, dark: FoxyRoughColors.nearBlack)
    }

    override open var monoColorContentStrongLoading: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.concreteGrey, dark: FoxyRoughColors.nearBlack)
    }

    override open var monoColorContentStrongDisabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.borderLight, dark: FoxyRoughColors.mutedLight)
    }

    override open var monoColorContentStrongFocus: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: FoxyRoughColors.concreteGrey, dark: FoxyRoughColors.nearBlack)
    }
}
