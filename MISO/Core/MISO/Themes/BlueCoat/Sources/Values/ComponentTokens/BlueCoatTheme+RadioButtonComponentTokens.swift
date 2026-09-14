// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensComponent
import MISOTokensSemantic

extension BlueCoatThemeRadioButtonComponentTokensProvider: RadioButtonComponentTokens {
    /// Has for value token borders.radiusPill (= 2000)
    @objc open var borderRadius: BorderRadiusSemanticToken { borders.radiusPill }
    /// Has for value token borders.widthNone (= 0)
    @objc open var borderWidthSelected: BorderWidthSemanticToken { borders.widthNone }
    /// Has for value token borders.widthNone (= 0)
    @objc open var borderWidthSelectedFocus: BorderWidthSemanticToken { borders.widthNone }
    /// Has for value token borders.widthNone (= 0)
    @objc open var borderWidthSelectedHover: BorderWidthSemanticToken { borders.widthNone }
    /// Has for value token borders.widthNone (= 0)
    @objc open var borderWidthSelectedPressed: BorderWidthSemanticToken { borders.widthNone }
    /// Has for value token borders.widthMedium (= 3)
    @objc open var borderWidthUnselected: BorderWidthSemanticToken { borders.widthMedium }
    /// Has for value token borders.widthMedium (= 3)
    @objc open var borderWidthUnselectedFocus: BorderWidthSemanticToken { borders.widthMedium }
    /// Has for value token borders.widthMedium (= 3)
    @objc open var borderWidthUnselectedHover: BorderWidthSemanticToken { borders.widthMedium }
    /// Has for value token borders.widthMedium (= 3)
    @objc open var borderWidthUnselectedPressed: BorderWidthSemanticToken { borders.widthMedium }
    /// Has for value token sizes.minInteractiveAreaDefault (= 48)
    @objc open var sizeMaxHeight: SizeSemanticToken { sizes.minInteractiveAreaDefault }
    /// Has for value token sizes.minInteractiveAreaDefault (= 48)
    @objc open var sizeMinHeight: SizeSemanticToken { sizes.minInteractiveAreaDefault }
    /// Has for value token sizes.minInteractiveAreaDefault (= 48)
    @objc open var sizeMinWidth: SizeSemanticToken { sizes.minInteractiveAreaDefault }
}
