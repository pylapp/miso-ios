// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensRaw
import MISOTokensSemantic

extension BlueCoatThemeColorModeSemanticTokensProvider: ColorModeSemanticTokens {
    /// Has for value token ColorModeRawTokens.dark
    @objc open var navigationBarDark: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var navigationBarLight: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.light
    @objc open var onBgInverseHighDark: ColorModeSemanticToken { ColorModeRawTokens.light }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onBgInverseHighLight: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onBgInverseLowDark: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onBgInverseLowLight: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onBgPrimaryDark: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.light
    @objc open var onBgPrimaryLight: ColorModeSemanticToken { ColorModeRawTokens.light }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onBgSecondaryDark: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.light
    @objc open var onBgSecondaryLight: ColorModeSemanticToken { ColorModeRawTokens.light }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onBgTertiaryDark: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.light
    @objc open var onBgTertiaryLight: ColorModeSemanticToken { ColorModeRawTokens.light }
    /// Has for value token ColorModeRawTokens.monochromeLight
    @objc open var onBrandPrimaryDark: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
    /// Has for value token ColorModeRawTokens.monochromeDark
    @objc open var onBrandPrimaryLight: ColorModeSemanticToken { ColorModeRawTokens.monochromeDark }
    /// Has for value token ColorModeRawTokens.monochromeLight
    @objc open var onBrandSecondaryDark: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
    /// Has for value token ColorModeRawTokens.monochromeDark
    @objc open var onBrandSecondaryLight: ColorModeSemanticToken { ColorModeRawTokens.monochromeDark }
    /// Has for value token ColorModeRawTokens.undefined
    @objc open var onBrandTertiaryDark: ColorModeSemanticToken { ColorModeRawTokens.undefined }
    /// Has for value token ColorModeRawTokens.undefined
    @objc open var onBrandTertiaryLight: ColorModeSemanticToken { ColorModeRawTokens.undefined }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onOverlayDropdownDark: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.light
    @objc open var onOverlayDropdownLight: ColorModeSemanticToken { ColorModeRawTokens.light }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onOverlayModalDark: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.light
    @objc open var onOverlayModalLight: ColorModeSemanticToken { ColorModeRawTokens.light }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onOverlayTooltipDark: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onOverlayTooltipLight: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.monochromeLight
    @objc open var onStatusAccentEmphasizedDark: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
    /// Has for value token ColorModeRawTokens.monochromeDark
    @objc open var onStatusAccentEmphasizedLight: ColorModeSemanticToken { ColorModeRawTokens.monochromeDark }
    /// Has for value token ColorModeRawTokens.monochromeDark
    @objc open var onStatusAccentMutedDark: ColorModeSemanticToken { ColorModeRawTokens.monochromeDark }
    /// Has for value token ColorModeRawTokens.monochromeLight
    @objc open var onStatusAccentMutedLight: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
    /// Has for value token ColorModeRawTokens.monochromeLight
    @objc open var onStatusInfoEmphasizedDark: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
    /// Has for value token ColorModeRawTokens.monochromeDark
    @objc open var onStatusInfoEmphasizedLight: ColorModeSemanticToken { ColorModeRawTokens.monochromeDark }
    /// Has for value token ColorModeRawTokens.monochromeDark
    @objc open var onStatusInfoMutedDark: ColorModeSemanticToken { ColorModeRawTokens.monochromeDark }
    /// Has for value token ColorModeRawTokens.monochromeLight
    @objc open var onStatusInfoMutedLight: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
    /// Has for value token ColorModeRawTokens.monochromeLight
    @objc open var onStatusNegativeEmphasizedDark: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
    /// Has for value token ColorModeRawTokens.monochromeDark
    @objc open var onStatusNegativeEmphasizedLight: ColorModeSemanticToken { ColorModeRawTokens.monochromeDark }
    /// Has for value token ColorModeRawTokens.monochromeDark
    @objc open var onStatusNegativeMutedDark: ColorModeSemanticToken { ColorModeRawTokens.monochromeDark }
    /// Has for value token ColorModeRawTokens.monochromeLight
    @objc open var onStatusNegativeMutedLight: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
    /// Has for value token ColorModeRawTokens.monochromeLight
    @objc open var onStatusPositiveEmphasizedDark: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
    /// Has for value token ColorModeRawTokens.monochromeDark
    @objc open var onStatusPositiveEmphasizedLight: ColorModeSemanticToken { ColorModeRawTokens.monochromeDark }
    /// Has for value token ColorModeRawTokens.monochromeDark
    @objc open var onStatusPositiveMutedDark: ColorModeSemanticToken { ColorModeRawTokens.monochromeDark }
    /// Has for value token ColorModeRawTokens.monochromeLight
    @objc open var onStatusPositiveMutedLight: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
    /// Has for value token ColorModeRawTokens.monochromeLight
    @objc open var onStatusWarningEmphasizedDark: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
    /// Has for value token ColorModeRawTokens.monochromeLight
    @objc open var onStatusWarningEmphasizedLight: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
    /// Has for value token ColorModeRawTokens.monochromeDark
    @objc open var onStatusWarningMutedDark: ColorModeSemanticToken { ColorModeRawTokens.monochromeDark }
    /// Has for value token ColorModeRawTokens.monochromeLight
    @objc open var onStatusWarningMutedLight: ColorModeSemanticToken { ColorModeRawTokens.monochromeLight }
    /// Has for value token ColorModeRawTokens.light
    @objc open var onSurfaceInverseHighDark: ColorModeSemanticToken { ColorModeRawTokens.light }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onSurfaceInverseHighLight: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onSurfaceInverseLowDark: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onSurfaceInverseLowLight: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onSurfacePrimaryDark: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.light
    @objc open var onSurfacePrimaryLight: ColorModeSemanticToken { ColorModeRawTokens.light }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onSurfaceSecondaryDark: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.light
    @objc open var onSurfaceSecondaryLight: ColorModeSemanticToken { ColorModeRawTokens.light }
    /// Has for value token ColorModeRawTokens.dark
    @objc open var onSurfaceTertiaryDark: ColorModeSemanticToken { ColorModeRawTokens.dark }
    /// Has for value token ColorModeRawTokens.light
    @objc open var onSurfaceTertiaryLight: ColorModeSemanticToken { ColorModeRawTokens.light }
}
