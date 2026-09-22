// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensSemantic

/// Defines provider objects for space semantic tokens (i.e. in the end `DimensionRawTokens`).
/// These values can be overridden inside ``BlueCoatThemeSpaceSemanticTokensProvider`` subclasses
/// (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension BlueCoatThemeSpaceSemanticTokensProvider: SpaceMultipleSemanticTokens {

    // MARK: Semantic token - Spacing - Layout fluid

    @objc open var scaledNone: MultipleSpaceSemanticToken { MultipleSpaceSemanticToken(compact: scaledNoneMobile, regular: scaledNoneTablet) }
    @objc open var scaled3xsmall: MultipleSpaceSemanticToken { MultipleSpaceSemanticToken(compact: scaled3xsmallMobile, regular: scaled3xsmallTablet) }
    @objc open var scaled2xsmall: MultipleSpaceSemanticToken { MultipleSpaceSemanticToken(compact: scaled2xsmallMobile, regular: scaled2xsmallTablet) }
    @objc open var scaledXsmall: MultipleSpaceSemanticToken { MultipleSpaceSemanticToken(compact: scaledXsmallMobile, regular: scaledXsmallTablet) }
    @objc open var scaledSmall: MultipleSpaceSemanticToken { MultipleSpaceSemanticToken(compact: scaledSmallMobile, regular: scaledSmallTablet) }
    @objc open var scaledMedium: MultipleSpaceSemanticToken { MultipleSpaceSemanticToken(compact: scaledMediumMobile, regular: scaledMediumTablet) }
    @objc open var scaledLarge: MultipleSpaceSemanticToken { MultipleSpaceSemanticToken(compact: scaledLargeMobile, regular: scaledLargeTablet) }
    @objc open var scaledXlarge: MultipleSpaceSemanticToken { MultipleSpaceSemanticToken(compact: scaledXlargeMobile, regular: scaledXlargeTablet) }
    @objc open var scaled2xlarge: MultipleSpaceSemanticToken { MultipleSpaceSemanticToken(compact: scaled2xlargeMobile, regular: scaled2xlargeTablet) }
    @objc open var scaled3xlarge: MultipleSpaceSemanticToken { MultipleSpaceSemanticToken(compact: scaled3xlargeMobile, regular: scaled3xlargeTablet) }
}
