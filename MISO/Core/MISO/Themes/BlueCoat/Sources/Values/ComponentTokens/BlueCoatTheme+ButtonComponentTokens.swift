// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensComponent
import MISOTokensRaw
import MISOTokensSemantic

// swiftlint:disable line_length

extension BlueCoatThemeButtonComponentTokensProvider: ButtonComponentTokens {
    /// Has for value token borders.radiusDefault (= 6)
    @objc open var borderRadiusAiIconOnly: BorderRadiusSemanticToken { borders.radiusDefault }
    /// Has for value token borders.radiusDefault (= 6)
    @objc open var borderRadiusDefault: BorderRadiusSemanticToken { borders.radiusDefault }
    /// Has for value token borders.radiusDefault (= 6)
    @objc open var borderRadiusRounded: BorderRadiusSemanticToken { borders.radiusDefault }
    /// Has for value token borders.radiusPill (= 2000)
    @objc open var borderRadiusSocial: BorderRadiusSemanticToken { borders.radiusPill }
    /// Has for value token borders.widthDefault (= 2)
    @objc open var borderWidthAi: BorderWidthSemanticToken { borders.widthDefault }
    /// Has for value token borders.widthDefault (= 2)
    @objc open var borderWidthAiInteraction: BorderWidthSemanticToken { borders.widthDefault }
    /// Has for value token borders.widthNone (= 0)
    @objc open var borderWidthDefault: BorderWidthSemanticToken { borders.widthNone }
    /// Has for value token borders.widthNone (= 0)
    @objc open var borderWidthDefaultInteraction: BorderWidthSemanticToken { borders.widthNone }
    /// Has for value token borders.widthNone (= 0)
    @objc open var borderWidthDefaultInteractionMono: BorderWidthSemanticToken { borders.widthNone }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBgAiDisabled: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBgAiEnabled: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBgAiFocus: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBgAiHover: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBgAiLoading: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBgAiPressed: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.surfaceBrandSecondary (= light: "#DB2345FF" / dark: "#F66F7DFF")
    @objc open var colorBgBrandEnabled: MultipleColorSemanticToken { colors.surfaceBrandSecondary }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositorySecondaryHigh, dark: colors.repositorySecondaryLower) (= light: "#B81839FF" / dark: "#FA9EA6FF")
    @objc open var colorBgBrandFocus: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositorySecondaryHigh, dark: colors.repositorySecondaryLower) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositorySecondaryHigh, dark: colors.repositorySecondaryLower) (= light: "#B81839FF" / dark: "#FA9EA6FF")
    @objc open var colorBgBrandHover: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositorySecondaryHigh, dark: colors.repositorySecondaryLower) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositorySecondaryHigherHigh, dark: colors.repositorySecondaryLowest) (= light: "#8E1532FF" / dark: "#FCCFD2FF")
    @objc open var colorBgBrandLoading: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositorySecondaryHigherHigh, dark: colors.repositorySecondaryLowest) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositorySecondaryHigherHigh, dark: colors.repositorySecondaryLowest) (= light: "#8E1532FF" / dark: "#FCCFD2FF")
    @objc open var colorBgBrandPressed: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositorySecondaryHigherHigh, dark: colors.repositorySecondaryLowest) }
    /// Has for value token colors.actionDisabled (= light: "#05052E33" / dark: "#EFF5FF33")
    @objc open var colorBgDefaultDisabled: MultipleColorSemanticToken { colors.actionDisabled }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryOpacityPrimaryLowest, dark: colors.repositoryOpacityPrimaryMedium) (= light: "#2055E514" / dark: "#2055E566")
    @objc open var colorBgDefaultEnabled: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryOpacityPrimaryLowest, dark: colors.repositoryOpacityPrimaryMedium) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryOpacityPrimaryLower, dark: colors.repositoryOpacityPrimaryHigh) (= light: "#2055E533" / dark: "#2055E58F")
    @objc open var colorBgDefaultFocus: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryOpacityPrimaryLower, dark: colors.repositoryOpacityPrimaryHigh) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryOpacityPrimaryLower, dark: colors.repositoryOpacityPrimaryHigh) (= light: "#2055E533" / dark: "#2055E58F")
    @objc open var colorBgDefaultHover: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryOpacityPrimaryLower, dark: colors.repositoryOpacityPrimaryHigh) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryOpacityPrimaryLow, dark: colors.repositoryOpacityPrimaryHigher) (= light: "#2055E55C" / dark: "#2055E5AD")
    @objc open var colorBgDefaultLoading: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryOpacityPrimaryLow, dark: colors.repositoryOpacityPrimaryHigher) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryOpacityPrimaryLow, dark: colors.repositoryOpacityPrimaryHigher) (= light: "#2055E55C" / dark: "#2055E5AD")
    @objc open var colorBgDefaultPressed: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryOpacityPrimaryLow, dark: colors.repositoryOpacityPrimaryHigher) }
    /// Has for value token colors.actionSupportFocus (= light: "#05052E14" / dark: "#EFF5FF14")
    @objc open var colorBgMinimalFocus: MultipleColorSemanticToken { colors.actionSupportFocus }
    /// Has for value token colors.actionSupportHover (= light: "#05052E14" / dark: "#EFF5FF14")
    @objc open var colorBgMinimalHover: MultipleColorSemanticToken { colors.actionSupportHover }
    /// Has for value token colors.actionSupportPressed (= light: "#05052E1F" / dark: "#EFF5FF1F")
    @objc open var colorBgMinimalPressed: MultipleColorSemanticToken { colors.actionSupportPressed }
    /// Has for value token colors.actionDisabled (= light: "#05052E33" / dark: "#EFF5FF33")
    @objc open var colorBorderAiDisabled: MultipleColorSemanticToken { colors.actionDisabled }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBorderAiEnabled: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBorderAiFocus: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBorderAiHover: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBorderAiLoading: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBorderAiPressed: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBorderDefaultDisabled: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBorderDefaultEnabled: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBorderDefaultFocus: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBorderDefaultHover: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBorderDefaultLoading: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.opacityTransparent (= light: "#05052E00" / dark: "#EFF5FF00")
    @objc open var colorBorderDefaultPressed: MultipleColorSemanticToken { colors.opacityTransparent }
    /// Has for value token colors.actionDisabled (= light: "#05052E33" / dark: "#EFF5FF33")
    @objc open var colorContentAiDisabled: MultipleColorSemanticToken { colors.actionDisabled }
    /// Has for value token colors.actionEnabled (= light: "#2055E5FF" / dark: "#96C1FAFF")
    @objc open var colorContentAiEnabled: MultipleColorSemanticToken { colors.actionEnabled }
    /// Has for value token colors.actionFocus (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentAiFocus: MultipleColorSemanticToken { colors.actionFocus }
    /// Has for value token colors.actionHover (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentAiHover: MultipleColorSemanticToken { colors.actionHover }
    /// Has for value token colors.actionLoading (= light: "#213787FF" / dark: "#DCE9FDFF")
    @objc open var colorContentAiLoading: MultipleColorSemanticToken { colors.actionLoading }
    /// Has for value token colors.actionPressed (= light: "#213787FF" / dark: "#DCE9FDFF")
    @objc open var colorContentAiPressed: MultipleColorSemanticToken { colors.actionPressed }
    /// Has for value token colors.contentOnBrandSecondary (= light: "#FFFFFFFF" / dark: "#08090DFF")
    @objc open var colorContentBrandEnabled: MultipleColorSemanticToken { colors.contentOnBrandSecondary }
    /// Has for value token colors.contentOnActionFocus (= light: "#FFFFFFFF" / dark: "#08090DFF")
    @objc open var colorContentBrandFocus: MultipleColorSemanticToken { colors.contentOnActionFocus }
    /// Has for value token colors.contentOnActionHover (= light: "#FFFFFFFF" / dark: "#08090DFF")
    @objc open var colorContentBrandHover: MultipleColorSemanticToken { colors.contentOnActionHover }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryNeutralMutedWhite, dark: colors.repositoryNeutralEmphasizedBlack) (= light: "#FFFFFFFF" / dark: "#08090DFF")
    @objc open var colorContentBrandLoading: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryNeutralMutedWhite, dark: colors.repositoryNeutralEmphasizedBlack) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryNeutralMutedWhite, dark: colors.repositoryNeutralEmphasizedBlack) (= light: "#FFFFFFFF" / dark: "#08090DFF")
    @objc open var colorContentBrandPressed: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryNeutralMutedWhite, dark: colors.repositoryNeutralEmphasizedBlack) }
    /// Has for value token colors.actionDisabled (= light: "#05052E33" / dark: "#EFF5FF33")
    @objc open var colorContentDefaultDisabled: MultipleColorSemanticToken { colors.actionDisabled }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryPrimaryHigh, dark: colors.repositoryPrimaryLower) (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentDefaultEnabled: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryPrimaryHigh, dark: colors.repositoryPrimaryLower) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryPrimaryHigh, dark: colors.repositoryPrimaryLower) (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentDefaultFocus: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryPrimaryHigh, dark: colors.repositoryPrimaryLower) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryPrimaryHigh, dark: colors.repositoryPrimaryLower) (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentDefaultHover: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryPrimaryHigh, dark: colors.repositoryPrimaryLower) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryPrimaryHigh, dark: colors.repositoryPrimaryLower) (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentDefaultLoading: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryPrimaryHigh, dark: colors.repositoryPrimaryLower) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryPrimaryHigh, dark: colors.repositoryPrimaryLower) (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentDefaultPressed: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryPrimaryHigh, dark: colors.repositoryPrimaryLower) }
    /// Has for value token colors.actionDisabled (= light: "#05052E33" / dark: "#EFF5FF33")
    @objc open var colorContentMinimalDisabled: MultipleColorSemanticToken { colors.actionDisabled }
    /// Has for value token colors.actionEnabled (= light: "#2055E5FF" / dark: "#96C1FAFF")
    @objc open var colorContentMinimalEnabled: MultipleColorSemanticToken { colors.actionEnabled }
    /// Has for value token colors.actionFocus (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentMinimalFocus: MultipleColorSemanticToken { colors.actionFocus }
    /// Has for value token colors.actionHover (= light: "#223CABFF" / dark: "#C1D8FCFF")
    @objc open var colorContentMinimalHover: MultipleColorSemanticToken { colors.actionHover }
    /// Has for value token colors.actionLoading (= light: "#213787FF" / dark: "#DCE9FDFF")
    @objc open var colorContentMinimalLoading: MultipleColorSemanticToken { colors.actionLoading }
    /// Has for value token colors.actionPressed (= light: "#213787FF" / dark: "#DCE9FDFF")
    @objc open var colorContentMinimalPressed: MultipleColorSemanticToken { colors.actionPressed }
    /// Has for value token sizes.iconWithLabelLargeSizeXsmall (= 20)
    @objc open var sizeIconDefault: SizeSemanticToken { sizes.iconWithLabelLargeSizeXsmall }
    /// Has for value token sizes.iconWithLabelLargeSizeSmall (= 24)
    @objc open var sizeIconOnlyDefault: SizeSemanticToken { sizes.iconWithLabelLargeSizeSmall }
    /// Has for value token sizes.iconWithLabelLargeSizeXsmall (= 20)
    @objc open var sizeIconOnlySmall: SizeSemanticToken { sizes.iconWithLabelLargeSizeXsmall }
    /// Has for value token sizes.iconWithLabelMediumSizeSmall (= 16)
    @objc open var sizeIconSmall: SizeSemanticToken { sizes.iconWithLabelMediumSizeSmall }
    /// Has for value token sizes.minInteractiveAreaDefault (= 48)
    @objc open var sizeMaxSizeIconOnlyDefault: SizeSemanticToken { sizes.minInteractiveAreaDefault }
    /// Has for value token sizes.minInteractiveAreaSmall (= 40)
    @objc open var sizeMaxSizeIconOnlySmall: SizeSemanticToken { sizes.minInteractiveAreaSmall }
    /// Has for value token DimensionRawTokens._4000 (= 480)
    @objc open var sizeMaxWidth: SizeSemanticToken { DimensionRawTokens._4000 }
    /// Has for value token sizes.minInteractiveAreaDefault (= 48)
    @objc open var sizeMinHeightDefault: SizeSemanticToken { sizes.minInteractiveAreaDefault }
    /// Has for value token sizes.minInteractiveAreaSmall (= 40)
    @objc open var sizeMinHeightSmall: SizeSemanticToken { sizes.minInteractiveAreaSmall }
    /// Has for value token sizes.minInteractiveAreaDefault (= 48)
    @objc open var sizeMinWidthDefault: SizeSemanticToken { sizes.minInteractiveAreaDefault }
    /// Has for value token sizes.minInteractiveAreaSmall (= 40)
    @objc open var sizeMinWidthSmall: SizeSemanticToken { sizes.minInteractiveAreaSmall }
    /// Has for value token sizes.iconWithLabelLargeSizeXsmall (= 20)
    @objc open var sizeProgressIndicatorDefault: SizeSemanticToken { sizes.iconWithLabelLargeSizeXsmall }
    /// Has for value token sizes.iconWithLabelMediumSizeSmall (= 16)
    @objc open var sizeProgressIndicatorSmall: SizeSemanticToken { sizes.iconWithLabelMediumSizeSmall }
    /// Has for value token spaces.columnGapXsmall (= 6)
    @objc open var spaceColumnGapChevronDefault: SpaceSemanticToken { spaces.columnGapXsmall }
    /// Has for value token spaces.columnGap2xsmall (= 4)
    @objc open var spaceColumnGapChevronSmall: SpaceSemanticToken { spaces.columnGap2xsmall }
    /// Has for value token spaces.columnGap2xsmall (= 4)
    @objc open var spaceColumnGapIconChevronDefault: SpaceSemanticToken { spaces.columnGap2xsmall }
    /// Has for value token spaces.columnGap3xsmall (= 2)
    @objc open var spaceColumnGapIconChevronSmall: SpaceSemanticToken { spaces.columnGap3xsmall }
    /// Has for value token spaces.columnGapSmall (= 8)
    @objc open var spaceColumnGapIconDefault: SpaceSemanticToken { spaces.columnGapSmall }
    /// Has for value token spaces.columnGapXsmall (= 6)
    @objc open var spaceColumnGapIconSmall: SpaceSemanticToken { spaces.columnGapXsmall }
    /// Has for value token spaces.insetMedium (= 12)
    @objc open var spaceInsetIconOnlyDefault: SpaceSemanticToken { spaces.insetMedium }
    /// Has for value token spaces.insetSmall (= 10)
    @objc open var spaceInsetIconOnlySmall: SpaceSemanticToken { spaces.insetSmall }
    /// Has for value token spaces.inset4xsmall (= 2)
    @objc open var spaceInsetProgressIndicatorOnlyDefault: SpaceSemanticToken { spaces.inset4xsmall }
    /// Has for value token spaces.inset4xsmall (= 2)
    @objc open var spaceInsetProgressIndicatorOnlySmall: SpaceSemanticToken { spaces.inset4xsmall }
    /// Has for value token spaces.paddingBlockMedium (= 12)
    @objc open var spacePaddingBlockDefault: SpaceSemanticToken { spaces.paddingBlockMedium }
    /// Has for value token spaces.paddingBlockSmall (= 10)
    @objc open var spacePaddingBlockSmall: SpaceSemanticToken { spaces.paddingBlockSmall }
    /// Has for value token spaces.paddingInlineLarge (= 16)
    @objc open var spacePaddingInlineChevronEndDefault: SpaceSemanticToken { spaces.paddingInlineLarge }
    /// Has for value token spaces.paddingInlineMedium (= 12)
    @objc open var spacePaddingInlineChevronEndSmall: SpaceSemanticToken { spaces.paddingInlineMedium }
    /// Has for value token spaces.paddingInlineLarge (= 16)
    @objc open var spacePaddingInlineChevronStartDefault: SpaceSemanticToken { spaces.paddingInlineLarge }
    /// Has for value token spaces.paddingInlineMedium (= 12)
    @objc open var spacePaddingInlineChevronStartSmall: SpaceSemanticToken { spaces.paddingInlineMedium }
    /// Has for value token spaces.paddingInline3xlarge (= 28)
    @objc open var spacePaddingInlineEndIconStartDefault: SpaceSemanticToken { spaces.paddingInline3xlarge }
    /// Has for value token spaces.paddingInline2xlarge (= 24)
    @objc open var spacePaddingInlineEndIconStartSmall: SpaceSemanticToken { spaces.paddingInline2xlarge }
    /// Has for value token spaces.paddingInline4xlarge (= 32)
    @objc open var spacePaddingInlineIconNoneDefault: SpaceSemanticToken { spaces.paddingInline4xlarge }
    /// Has for value token spaces.paddingInline2xlarge (= 24)
    @objc open var spacePaddingInlineIconNoneSmall: SpaceSemanticToken { spaces.paddingInline2xlarge }
    /// Has for value token spaces.paddingInlineXlarge (= 20)
    @objc open var spacePaddingInlineIconStartDefault: SpaceSemanticToken { spaces.paddingInlineXlarge }
    /// Has for value token spaces.paddingInlineLarge (= 16)
    @objc open var spacePaddingInlineIconStartSmall: SpaceSemanticToken { spaces.paddingInlineLarge }
    /// Has for value token spaces.paddingInline3xlarge (= 28)
    @objc open var spacePaddingInlineStartIconEndDefault: SpaceSemanticToken { spaces.paddingInline3xlarge }
    /// Has for value token spaces.paddingInline2xlarge (= 24)
    @objc open var spacePaddingInlineStartIconEndSmall: SpaceSemanticToken { spaces.paddingInline2xlarge }
}

// swiftlint:enable line_length
