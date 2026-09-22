// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensComponent
import MISOTokensSemantic

extension BlueCoatThemeInputTagComponentTokensProvider: InputTagComponentTokens {
    /// Has for value token borders.widthDefault (= 2)
    @objc open var borderWidthDefault: BorderWidthSemanticToken { borders.widthDefault }
    /// Has for value token borders.widthMedium (= 3)
    @objc open var borderWidthDefaultInteraction: BorderWidthSemanticToken { borders.widthMedium }
    /// Has for value token colors.actionSupportEnabled (= light: "#05052E0A" / dark: "#EFF5FF0A")
    @objc open var colorBgEnabled: MultipleColorSemanticToken { colors.actionSupportEnabled }
    /// Has for value token colors.actionSupportFocus (= light: "#05052E14" / dark: "#EFF5FF14")
    @objc open var colorBgFocus: MultipleColorSemanticToken { colors.actionSupportFocus }
    /// Has for value token colors.actionSupportHover (= light: "#05052E14" / dark: "#EFF5FF14")
    @objc open var colorBgHover: MultipleColorSemanticToken { colors.actionSupportHover }
    /// Has for value token colors.actionSupportPressed (= light: "#05052E1F" / dark: "#EFF5FF1F")
    @objc open var colorBgPressed: MultipleColorSemanticToken { colors.actionSupportPressed }
    /// Has for value token colors.borderDefault (= light: "#05052E33" / dark: "#EFF5FF33")
    @objc open var colorBorderEnabled: MultipleColorSemanticToken { colors.borderDefault }
    /// Has for value token colors.actionFocus (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorBorderFocus: MultipleColorSemanticToken { colors.actionFocus }
    /// Has for value token colors.actionHover (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorBorderHover: MultipleColorSemanticToken { colors.actionHover }
    /// Has for value token colors.actionPressed (= light: "#213787FF" / dark: "#DCE9FDFF")
    @objc open var colorBorderPressed: MultipleColorSemanticToken { colors.actionPressed }
    /// Has for value token colors.contentDefault (= light: "#08090DFF" / dark: "#E9ECF1FF")
    @objc open var colorContentEnabled: MultipleColorSemanticToken { colors.contentDefault }
    /// Has for value token colors.actionFocus (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentFocus: MultipleColorSemanticToken { colors.actionFocus }
    /// Has for value token colors.actionHover (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentHover: MultipleColorSemanticToken { colors.actionHover }
    /// Has for value token colors.actionPressed (= light: "#213787FF" / dark: "#DCE9FDFF")
    @objc open var colorContentPressed: MultipleColorSemanticToken { colors.actionPressed }
}
