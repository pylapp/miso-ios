// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensComponent
import MISOTokensSemantic

// swiftlint:disable line_length

extension BlueCoatThemeCategoricalTagComponentTokensProvider: CategoricalTagComponentTokens {
    /// Has for value token MultipleColorSemanticToken(light: BlueCoatBrandColorRawTokens.royalBlue500, dark: BlueCoatBrandColorRawTokens.royalBlue300) (= light: "#407BF1FF" / dark: "#96C1FAFF")
    @objc open var colorBgCategory1: MultipleColorSemanticToken { MultipleColorSemanticToken(light: BlueCoatBrandColorRawTokens.royalBlue500, dark: BlueCoatBrandColorRawTokens.royalBlue300) }
    /// Has for value token MultipleColorSemanticToken(light: BlueCoatBrandColorRawTokens.flame500, dark: BlueCoatBrandColorRawTokens.flame300) (= light: "#F0741FFF" / dark: "#F8BA79FF")
    @objc open var colorBgCategory2: MultipleColorSemanticToken { MultipleColorSemanticToken(light: BlueCoatBrandColorRawTokens.flame500, dark: BlueCoatBrandColorRawTokens.flame300) }
    /// Has for value token MultipleColorSemanticToken(light: BlueCoatBrandColorRawTokens.colorMountainMeadow600, dark: BlueCoatBrandColorRawTokens.colorMountainMeadow400) (= light: "#25D09BFF" / dark: "#6CE5BFFF")
    @objc open var colorBgCategory3: MultipleColorSemanticToken { MultipleColorSemanticToken(light: BlueCoatBrandColorRawTokens.colorMountainMeadow600, dark: BlueCoatBrandColorRawTokens.colorMountainMeadow400) }
    /// Has for value token MultipleColorSemanticToken(light: BlueCoatBrandColorRawTokens.colorGoldTips500, dark: BlueCoatBrandColorRawTokens.colorGoldTips400) (= light: "#E7BB2CFF" / dark: "#ECCA5AFF")
    @objc open var colorBgCategory4: MultipleColorSemanticToken { MultipleColorSemanticToken(light: BlueCoatBrandColorRawTokens.colorGoldTips500, dark: BlueCoatBrandColorRawTokens.colorGoldTips400) }
    /// Has for value token MultipleColorSemanticToken(light: BlueCoatBrandColorRawTokens.colorLightIndigo500, dark: BlueCoatBrandColorRawTokens.colorLightIndigo300) (= light: "#8B5CF6FF" / dark: "#B395F9FF")
    @objc open var colorBgCategory5: MultipleColorSemanticToken { MultipleColorSemanticToken(light: BlueCoatBrandColorRawTokens.colorLightIndigo500, dark: BlueCoatBrandColorRawTokens.colorLightIndigo300) }
    /// Has for value token MultipleColorSemanticToken(colors.repositoryNeutralEmphasizedBlack) (= "#08090DFF")
    @objc open var colorContent: MultipleColorSemanticToken { MultipleColorSemanticToken(colors.repositoryNeutralEmphasizedBlack) }
}

// swiftlint:enable line_length
