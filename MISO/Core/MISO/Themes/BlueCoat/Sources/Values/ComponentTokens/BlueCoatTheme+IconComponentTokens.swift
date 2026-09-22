// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensComponent
import MISOTokensSemantic

// swiftlint:disable identifier_name
// swiftlint:disable line_length

extension BlueCoatThemeIconComponentTokensProvider: IconComponentTokens {
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryWarningMedium, dark: colors.repositoryWarningLow) (= light: "#FFD000FF" / dark: "#FFE270FF")
    @objc open var colorContentStatusWarningExternalShape: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryWarningMedium, dark: colors.repositoryWarningLow) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryWarningHigh, dark: colors.opacityTransparentDark) (= light: "#856A00FF" / dark: "#EFF5FF00")
    @objc open var colorContentStatusWarningInternalShape: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryWarningHigh, dark: colors.opacityTransparentDark) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryWarningLow, dark: colors.repositoryWarningMedium) (= light: "#FFE270FF" / dark: "#FFD000FF")
    @objc open var colorContentStatusWarningInverseExternalShape: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryWarningLow, dark: colors.repositoryWarningMedium) }
    /// Has for value token MultipleColorSemanticToken(light: colors.opacityTransparentDark, dark: colors.repositoryWarningHigh) (= light: "#EFF5FF00" / dark: "#856A00FF")
    @objc open var colorContentStatusWarningInverseInternalShape: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.opacityTransparentDark, dark: colors.repositoryWarningHigh) }
}

// swiftlint:enable identifier_name
// swiftlint:enable line_length
