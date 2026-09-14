// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensComponent
import MISOTokensRaw
import MISOTokensSemantic

// swiftlint:disable identifier_name

extension BlueCoatThemeAccordionComponentTokensProvider: AccordionFaqComponentTokens {
    /// Has for value token sizes.iconWithLabelLargeSizeSmall (= 24)
    @objc open var sizeExpandingIndicatorMobile: SizeSemanticToken { sizes.iconWithLabelLargeSizeSmall }
    /// Has for value token sizes.iconWithLabelLargeSizeSmall (= 24)
    @objc open var sizeExpandingIndicatorTablet: SizeSemanticToken { sizes.iconWithLabelLargeSizeSmall }
    /// Has for value token sizes.iconWithLabelLargeSizeMedium (= 28)
    @objc open var sizeIconMobile: SizeSemanticToken { sizes.iconWithLabelLargeSizeMedium }
    /// Has for value token sizes.iconWithLabelLargeSizeMedium (= 28)
    @objc open var sizeIconTablet: SizeSemanticToken { sizes.iconWithLabelLargeSizeMedium }
    /// Has for value token DimensionRawTokens._750 (= 60)
    @objc open var sizeMinHeightMobile: SizeSemanticToken { DimensionRawTokens._750 }
    /// Has for value token DimensionRawTokens._750 (= 60)
    @objc open var sizeMinHeightTablet: SizeSemanticToken { DimensionRawTokens._750 }
    /// Has for value token spaces.columnGapMedium (= 12)
    @objc open var spaceColumnGapMobile: SpaceSemanticToken { spaces.columnGapMedium }
    /// Has for value token spaces.columnGapMedium (= 12)
    @objc open var spaceColumnGapTablet: SpaceSemanticToken { spaces.columnGapMedium }
    /// Has for value token spaces.paddingBlock3xlarge (= 28)
    @objc open var spacePaddingBlockBottomExpandContainerMobile: SpaceSemanticToken { spaces.paddingBlock3xlarge }
    /// Has for value token spaces.paddingBlock3xlarge (= 28)
    @objc open var spacePaddingBlockBottomExpandContainerTablet: SpaceSemanticToken { spaces.paddingBlock3xlarge }
    /// Has for value token spaces.paddingBlockLarge (= 16)
    @objc open var spacePaddingBlockBottomSlotContainerMobile: SpaceSemanticToken { spaces.paddingBlockLarge }
    /// Has for value token spaces.paddingBlockLarge (= 16)
    @objc open var spacePaddingBlockBottomSlotContainerTablet: SpaceSemanticToken { spaces.paddingBlockLarge }
    /// Has for value token spaces.paddingBlockMedium (= 12)
    @objc open var spacePaddingBlockMobile: SpaceSemanticToken { spaces.paddingBlockMedium }
    /// Has for value token spaces.paddingBlockMedium (= 12)
    @objc open var spacePaddingBlockTablet: SpaceSemanticToken { spaces.paddingBlockMedium }
}

// swiftlint:enable identifier_name
