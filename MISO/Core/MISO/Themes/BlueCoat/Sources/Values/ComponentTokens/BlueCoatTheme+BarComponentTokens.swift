// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensComponent
import MISOTokensRaw
import MISOTokensSemantic

// swiftlint:disable identifier_name
// swiftlint:disable line_length

extension BlueCoatThemeBarComponentTokensProvider: BarComponentTokens {
    /// Has for value token borders.radiusPill (= 2000)
    @objc open var borderRadiusCurrentIndicatorCustomBottom: BorderRadiusSemanticToken { borders.radiusPill }
    /// Has for value token borders.radiusDefault (= 6)
    @objc open var borderRadiusCurrentIndicatorCustomTop: BorderRadiusSemanticToken { borders.radiusDefault }
    /// Has for value token colors.actionSelected (= light: "#2055E5FF" / dark: "#96C1FAFF")
    @objc open var colorAccent: MultipleColorSemanticToken { colors.actionSelected }
    /// Has for value token colors.bgSecondary (= light: "#F7F8FAFF" / dark: "#181C26FF")
    @objc open var colorBgOpaque: MultipleColorSemanticToken { colors.bgSecondary }
    /// Has for value token MultipleColorSemanticToken(light: ColorRawTokens.white800, dark: BlueCoatBrandColorRawTokens.opacityGrayDark880800) (= light: "#FFFFFFCC" / dark: "#101319CC")
    @objc open var colorBgTranslucent: MultipleColorSemanticToken { MultipleColorSemanticToken(light: ColorRawTokens.white800, dark: BlueCoatBrandColorRawTokens.opacityGrayDark880800) }
    /// Has for value token colors.bgSecondary (= light: "#F7F8FAFF" / dark: "#181C26FF")
    @objc open var colorBorderBadge: MultipleColorSemanticToken { colors.bgSecondary }
    /// Has for value token colors.contentOnActionSelected (= light: "#FFFFFFFF" / dark: "#08090DFF")
    @objc open var colorContentOnAccent: MultipleColorSemanticToken { colors.contentOnActionSelected }
    /// Has for value token colors.actionSelected (= light: "#2055E5FF" / dark: "#96C1FAFF")
    @objc open var colorContentSelectedEnabled: MultipleColorSemanticToken { colors.actionSelected }
    /// Has for value token colors.actionFocus (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentSelectedFocus: MultipleColorSemanticToken { colors.actionFocus }
    /// Has for value token colors.actionHover (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentSelectedHover: MultipleColorSemanticToken { colors.actionHover }
    /// Has for value token colors.actionPressed (= light: "#213787FF" / dark: "#DCE9FDFF")
    @objc open var colorContentSelectedPressed: MultipleColorSemanticToken { colors.actionPressed }
    /// Has for value token colors.contentMuted (= light: "#05052EAD" / dark: "#EFF5FFA3")
    @objc open var colorContentUnselectedEnabled: MultipleColorSemanticToken { colors.contentMuted }
    /// Has for value token colors.actionFocus (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentUnselectedFocus: MultipleColorSemanticToken { colors.actionFocus }
    /// Has for value token colors.actionHover (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentUnselectedHover: MultipleColorSemanticToken { colors.actionHover }
    /// Has for value token colors.actionPressed (= light: "#213787FF" / dark: "#DCE9FDFF")
    @objc open var colorContentUnselectedPressed: MultipleColorSemanticToken { colors.actionPressed }
    /// Has for value token colors.actionSelected (= light: "#2055E5FF" / dark: "#96C1FAFF")
    @objc open var colorCurrentIndicatorCustomSelectedEnabled: MultipleColorSemanticToken { colors.actionSelected }
    /// Has for value token colors.actionFocus (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorCurrentIndicatorCustomSelectedFocus: MultipleColorSemanticToken { colors.actionFocus }
    /// Has for value token colors.actionHover (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorCurrentIndicatorCustomSelectedHover: MultipleColorSemanticToken { colors.actionHover }
    /// Has for value token colors.actionPressed (= light: "#213787FF" / dark: "#DCE9FDFF")
    @objc open var colorCurrentIndicatorCustomSelectedPressed: MultipleColorSemanticToken { colors.actionPressed }
    /// Has for value token EffectRawTokens.blur320 (= 32)
    @objc open var effectBgBlur: EffectSemanticToken { EffectRawTokens.blur320 }
    /// Has for value token opacities.invisible (= 0)
    @objc open var opacityCurrentIndicatorCustom: OpacitySemanticToken { opacities.invisible }
    /// Has for value token DimensionRawTokens.outOfSystem75 (= 3)
    @objc open var sizeHeightCurrentIndicatorCustom: SizeSemanticToken { DimensionRawTokens.outOfSystem75 }
    /// Has for value token DimensionRawTokens._300 (= 24)
    @objc open var sizeWidthCurrentIndicatorCustomBottom: SizeSemanticToken { DimensionRawTokens._300 }
    /// Has for value token DimensionRawTokens._500 (= 40)
    @objc open var sizeWidthCurrentIndicatorCustomTop: SizeSemanticToken { DimensionRawTokens._500 }
}

// swiftlint:enable identifier_name
// swiftlint:enable line_length
