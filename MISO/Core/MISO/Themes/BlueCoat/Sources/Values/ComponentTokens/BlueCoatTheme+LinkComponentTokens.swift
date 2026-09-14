// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensComponent
import MISOTokensRaw
import MISOTokensSemantic

extension BlueCoatThemeLinkComponentTokensProvider: LinkComponentTokens {
    /// Has for value token colors.actionEnabled (= light: "#2055E5FF" / dark: "#96C1FAFF")
    @objc open var colorChevronEnabled: MultipleColorSemanticToken { colors.actionEnabled }
    /// Has for value token colors.actionFocus (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorChevronFocus: MultipleColorSemanticToken { colors.actionFocus }
    /// Has for value token colors.actionHover (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorChevronHover: MultipleColorSemanticToken { colors.actionHover }
    /// Has for value token colors.actionPressed (= light: "#213787FF" / dark: "#DCE9FDFF")
    @objc open var colorChevronPressed: MultipleColorSemanticToken { colors.actionPressed }
    /// Has for value token colors.actionEnabled (= light: "#2055E5FF" / dark: "#96C1FAFF")
    @objc open var colorContentEnabled: MultipleColorSemanticToken { colors.actionEnabled }
    /// Has for value token colors.actionFocus (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentFocus: MultipleColorSemanticToken { colors.actionFocus }
    /// Has for value token colors.actionHover (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentHover: MultipleColorSemanticToken { colors.actionHover }
    /// Has for value token colors.actionPressed (= light: "#213787FF" / dark: "#DCE9FDFF")
    @objc open var colorContentPressed: MultipleColorSemanticToken { colors.actionPressed }
    /// Has for value token sizes.iconWithLabelLargeSizeXsmall (= 20)
    @objc open var sizeIconDefault: SizeSemanticToken { sizes.iconWithLabelLargeSizeXsmall }
    /// Has for value token sizes.iconWithLabelMediumSizeSmall (= 16)
    @objc open var sizeIconSmall: SizeSemanticToken { sizes.iconWithLabelMediumSizeSmall }
    /// Has for value token dimensions._xsmall (= 32)
    @objc open var sizeMinHeightCompactDensity: SizeSemanticToken { dimensions._xsmall }
    /// Has for value token sizes.minInteractiveAreaDefault (= 48)
    @objc open var sizeMinHeightDefault: SizeSemanticToken { sizes.minInteractiveAreaDefault }
    /// Has for value token sizes.minInteractiveAreaSmall (= 40)
    @objc open var sizeMinHeightSmall: SizeSemanticToken { sizes.minInteractiveAreaSmall }
    /// Has for value token dimensions._xsmall (= 32)
    @objc open var sizeMinWidth: SizeSemanticToken { dimensions._xsmall }
    /// Has for value token sizes.minInteractiveAreaSmall (= 40)
    @objc open var sizeMinWidthSmall: SizeSemanticToken { sizes.minInteractiveAreaSmall }
    /// Has for value token spaces.columnGap2xsmall (= 4)
    @objc open var spaceColumnGapChevronDefault: SpaceSemanticToken { spaces.columnGap2xsmall }
    /// Has for value token spaces.columnGap2xsmall (= 4)
    @objc open var spaceColumnGapChevronSmall: SpaceSemanticToken { spaces.columnGap2xsmall }
    /// Has for value token spaces.columnGapSmall (= 8)
    @objc open var spaceColumnGapIconDefault: SpaceSemanticToken { spaces.columnGapSmall }
    /// Has for value token spaces.columnGapXsmall (= 6)
    @objc open var spaceColumnGapIconSmall: SpaceSemanticToken { spaces.columnGapXsmall }
    /// Has for value token spaces.paddingBlock3xsmall (= 4)
    @objc open var spacePaddingBlockCompactDensityDefault: SpaceSemanticToken { spaces.paddingBlock3xsmall }
    /// Has for value token spaces.paddingBlock2xsmall (= 6)
    @objc open var spacePaddingBlockCompactDensitySmall: SpaceSemanticToken { spaces.paddingBlock2xsmall }
    /// Has for value token spaces.paddingBlockMedium (= 12)
    @objc open var spacePaddingBlockDefault: SpaceSemanticToken { spaces.paddingBlockMedium }
    /// Has for value token spaces.paddingBlockSmall (= 10)
    @objc open var spacePaddingBlockSmall: SpaceSemanticToken { spaces.paddingBlockSmall }
    /// Has for value token spaces.paddingInlineNone (= 0)
    @objc open var spacePaddingInline: SpaceSemanticToken { spaces.paddingInlineNone }
}
