// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensComponent
import MISOTokensSemantic

// swiftlint:disable identifier_name

extension BlueCoatThemeAccordionComponentTokensProvider: AccordionComponentTokens {
    /// Has for value token spaces.paddingBlock3xlarge (= 28)
    @objc open var spacePaddingBlockBottomExpandContainerDefault: SpaceSemanticToken { spaces.paddingBlock3xlarge }
    /// Has for value token spaces.paddingBlock2xlarge (= 24)
    @objc open var spacePaddingBlockBottomExpandContainerSmall: SpaceSemanticToken { spaces.paddingBlock2xlarge }
    /// Has for value token spaces.paddingBlockXsmall (= 8)
    @objc open var spacePaddingBlockTopExpandContainer: SpaceSemanticToken { spaces.paddingBlockXsmall }
}

// swiftlint:enable identifier_name
