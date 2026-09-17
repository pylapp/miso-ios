// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensComponent
import MISOTokensSemantic

extension BlueCoatThemeSkeletonComponentTokensProvider: SkeletonComponentTokens {
    /// Has for value token colors.opacityLowest (= light: "#05052E0A" / dark: "#EFF5FF0A")
    @objc open var colorBg: MultipleColorSemanticToken { colors.opacityLowest }
    /// Has for value token colors.opacityLower (= light: "#05052E14" / dark: "#EFF5FF14")
    @objc open var colorGradientMiddle: MultipleColorSemanticToken { colors.opacityLower }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorGradientStartEnd: MultipleColorSemanticToken { colors.opacityTransparent }
}
