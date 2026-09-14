// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensComponent
import MISOTokensSemantic

// swiftlint:disable line_length

extension BlueCoatThemeSwitchComponentTokensProvider: SwitchComponentTokens {
    /// Has for value token borders.radiusSmall (= 3)
    @objc open var borderRadiusCursor: BorderRadiusSemanticToken { borders.radiusSmall }
    /// Has for value token borders.radiusDefault (= 6)
    @objc open var borderRadiusTrack: BorderRadiusSemanticToken { borders.radiusDefault }
    /// Has for value token colors.actionSelected (= light: "#2055E5FF" / dark: "#96C1FAFF")
    @objc open var colorCheck: MultipleColorSemanticToken { colors.actionSelected }
    /// Has for value token colors.actionHover (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorCheckInteraction: MultipleColorSemanticToken { colors.actionHover }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryNeutralMutedWhite, dark: colors.repositoryNeutralEmphasizedHighest) (= light: "#FFFFFFFF" / dark: "#101319FF")
    @objc open var colorCursor: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryNeutralMutedWhite, dark: colors.repositoryNeutralEmphasizedHighest) }
    /// Has for value token colors.actionSelected (= light: "#2055E5FF" / dark: "#96C1FAFF")
    @objc open var colorTrackSelected: MultipleColorSemanticToken { colors.actionSelected }
    /// Has for value token colors.actionHover (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorTrackSelectedInteraction: MultipleColorSemanticToken { colors.actionHover }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryOpacityBlackMediumHigh, dark: colors.repositoryOpacityWhiteHigh) (= light: "#05052E70" / dark: "#EFF5FFA3")
    @objc open var colorTrackUnselected: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryOpacityBlackMediumHigh, dark: colors.repositoryOpacityWhiteHigh) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryOpacityBlackHigh, dark: colors.repositoryOpacityWhiteHigher) (= light: "#05052E85" / dark: "#EFF5FFCC")
    @objc open var colorTrackUnselectedInteraction: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryOpacityBlackHigh, dark: colors.repositoryOpacityWhiteHigher) }
    /// Has for value token opacities.opaque (= 1)
    @objc open var opacityCheck: OpacitySemanticToken { opacities.opaque }
    /// Has for value token dimensions._3xsmall (= 24)
    @objc open var sizeHeightCursorSelected: SizeSemanticToken { dimensions._3xsmall }
    /// Has for value token dimensions._5xsmall (= 16)
    @objc open var sizeHeightCursorUnselected: SizeSemanticToken { dimensions._5xsmall }
    /// Has for value token dimensions._xsmall (= 32)
    @objc open var sizeHeightTrack: SizeSemanticToken { dimensions._xsmall }
    /// Has for value token dimensions._xsmall (= 32)
    @objc open var sizeMaxHeight: SizeSemanticToken { dimensions._xsmall }
    /// Has for value token dimensions._xsmall (= 32)
    @objc open var sizeMinHeight: SizeSemanticToken { dimensions._xsmall }
    /// Has for value token sizes.minInteractiveAreaDefault (= 48)
    @objc open var sizeMinHeightInteractiveArea: SizeSemanticToken { sizes.minInteractiveAreaDefault }
    /// Has for value token dimensions._3xlarge (= 56)
    @objc open var sizeMinWidth: SizeSemanticToken { dimensions._3xlarge }
    /// Has for value token dimensions._3xsmall (= 24)
    @objc open var sizeWidthCursorSelected: SizeSemanticToken { dimensions._3xsmall }
    /// Has for value token dimensions._xsmall (= 32)
    @objc open var sizeWidthCursorSelectedPressed: SizeSemanticToken { dimensions._xsmall }
    /// Has for value token dimensions._5xsmall (= 16)
    @objc open var sizeWidthCursorUnselected: SizeSemanticToken { dimensions._5xsmall }
    /// Has for value token dimensions._3xsmall (= 24)
    @objc open var sizeWidthCursorUnselectedPressed: SizeSemanticToken { dimensions._3xsmall }
    /// Has for value token dimensions._3xlarge (= 56)
    @objc open var sizeWidthTrack: SizeSemanticToken { dimensions._3xlarge }
    /// Has for value token spaces.paddingInline3xsmall (= 4)
    @objc open var spacePaddingInlineSelected: SpaceSemanticToken { spaces.paddingInline3xsmall }
    /// Has for value token spaces.paddingInlineXsmall (= 8)
    @objc open var spacePaddingInlineUnselected: SpaceSemanticToken { spaces.paddingInlineXsmall }
}

// swiftlint:enable line_length
