// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensComponent
import MISOTokensSemantic

// swiftlint:disable identifier_name

extension BlueCoatThemeTypographyComponentTokensProvider: TypographyComponentTokens {
    /// Has for value token colors.contentBrandSecondary (= light: "#DB2345FF" / dark: "#F66F7DFF")
    @objc open var colorContentMarker: MultipleColorSemanticToken { colors.contentBrandSecondary }
    /// Has for value token true
    @objc open var headingLargeMarker: Bool { true }
    /// Has for value token spaces.paddingBlockNone (= 0)
    @objc open var spacePaddingBlockBottomHeadingLargeMarker: SpaceSemanticToken { spaces.paddingBlockNone }
    /// Has for value token spaces.paddingBlock3xsmall (= 4)
    @objc open var spacePaddingBlockTopHeadingLargeMarker: SpaceSemanticToken { spaces.paddingBlock3xsmall }
}

// swiftlint:enable identifier_name
