// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensSemantic

// swiftlint:disable line_length

/// Defines provider objects for font semantic tokens but "multiple", i.e. tokens with values depending to size classes or color schemes.
/// These values can be overridden inside `BlueCoatThemeFontSemanticTokensProvider` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension BlueCoatThemeFontSemanticTokensProvider: FontMultipleSemanticTokens {

    // MARK: - Semantic token - Typography - Font - Size

    @objc open var sizeDisplayLarge: MultipleFontSizeSemanticToken { MultipleFontSizeSemanticToken(compact: sizeDisplayLargeMobile, regular: sizeDisplayLargeTablet) }
    @objc open var sizeDisplayMedium: MultipleFontSizeSemanticToken { MultipleFontSizeSemanticToken(compact: sizeDisplayMediumMobile, regular: sizeDisplayMediumTablet) }
    @objc open var sizeDisplaySmall: MultipleFontSizeSemanticToken { MultipleFontSizeSemanticToken(compact: sizeDisplaySmallMobile, regular: sizeDisplaySmallTablet) }
    @objc open var sizeHeadingXlarge: MultipleFontSizeSemanticToken { MultipleFontSizeSemanticToken(compact: sizeHeadingXlargeMobile, regular: sizeHeadingXlargeTablet) }
    @objc open var sizeHeadingLarge: MultipleFontSizeSemanticToken { MultipleFontSizeSemanticToken(compact: sizeHeadingLargeMobile, regular: sizeHeadingLargeTablet) }
    @objc open var sizeHeadingMedium: MultipleFontSizeSemanticToken { MultipleFontSizeSemanticToken(compact: sizeHeadingMediumMobile, regular: sizeHeadingMediumTablet) }
    @objc open var sizeHeadingSmall: MultipleFontSizeSemanticToken { MultipleFontSizeSemanticToken(compact: sizeHeadingSmallMobile, regular: sizeHeadingSmallTablet) }
    @objc open var sizeBodyLarge: MultipleFontSizeSemanticToken { MultipleFontSizeSemanticToken(compact: sizeBodyLargeMobile, regular: sizeBodyLargeTablet) }
    @objc open var sizeBodyMedium: MultipleFontSizeSemanticToken { MultipleFontSizeSemanticToken(compact: sizeBodyMediumMobile, regular: sizeBodyMediumTablet) }
    @objc open var sizeBodySmall: MultipleFontSizeSemanticToken { MultipleFontSizeSemanticToken(compact: sizeBodySmallMobile, regular: sizeBodySmallTablet) }

    // MARK: - Semantic token - Typography - Font - Line height

    @objc open var lineHeightDisplayLarge: MultipleFontLineHeightSemanticToken { MultipleFontLineHeightSemanticToken(compact: lineHeightDisplayLargeMobile, regular: lineHeightDisplayLargeTablet) }
    @objc open var lineHeightDisplayMedium: MultipleFontLineHeightSemanticToken { MultipleFontLineHeightSemanticToken(compact: lineHeightDisplayMediumMobile, regular: lineHeightDisplayMediumTablet) }
    @objc open var lineHeightDisplaySmall: MultipleFontLineHeightSemanticToken { MultipleFontLineHeightSemanticToken(compact: lineHeightDisplaySmallMobile, regular: lineHeightDisplaySmallTablet) }
    @objc open var lineHeightHeadingXlarge: MultipleFontLineHeightSemanticToken { MultipleFontLineHeightSemanticToken(compact: lineHeightHeadingXlargeMobile, regular: lineHeightHeadingXlargeTablet) }
    @objc open var lineHeightHeadingLarge: MultipleFontLineHeightSemanticToken { MultipleFontLineHeightSemanticToken(compact: lineHeightHeadingLargeMobile, regular: lineHeightHeadingLargeTablet) }
    @objc open var lineHeightHeadingMedium: MultipleFontLineHeightSemanticToken { MultipleFontLineHeightSemanticToken(compact: lineHeightHeadingMediumMobile, regular: lineHeightHeadingMediumTablet) }
    @objc open var lineHeightHeadingSmall: MultipleFontLineHeightSemanticToken { MultipleFontLineHeightSemanticToken(compact: lineHeightHeadingSmallMobile, regular: lineHeightHeadingSmallTablet) }
    @objc open var lineHeightBodyLarge: MultipleFontLineHeightSemanticToken { MultipleFontLineHeightSemanticToken(compact: lineHeightBodyLargeMobile, regular: lineHeightBodyLargeTablet) }
    @objc open var lineHeightBodyMedium: MultipleFontLineHeightSemanticToken { MultipleFontLineHeightSemanticToken(compact: lineHeightBodyMediumMobile, regular: lineHeightBodyMediumTablet) }
    @objc open var lineHeightBodySmall: MultipleFontLineHeightSemanticToken { MultipleFontLineHeightSemanticToken(compact: lineHeightBodySmallMobile, regular: lineHeightBodySmallTablet) }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    @objc open var letterSpacingDisplayLarge: MultipleFontLetterSpacingSemanticToken { MultipleFontLetterSpacingSemanticToken(compact: letterSpacingDisplayLargeMobile, regular: letterSpacingDisplayLargeTablet) }
    @objc open var letterSpacingDisplayMedium: MultipleFontLetterSpacingSemanticToken { MultipleFontLetterSpacingSemanticToken(compact: letterSpacingDisplayMediumMobile, regular: letterSpacingDisplayMediumTablet) }
    @objc open var letterSpacingDisplaySmall: MultipleFontLetterSpacingSemanticToken { MultipleFontLetterSpacingSemanticToken(compact: letterSpacingDisplaySmallMobile, regular: letterSpacingDisplaySmallTablet) }
    @objc open var letterSpacingHeadingXlarge: MultipleFontLetterSpacingSemanticToken { MultipleFontLetterSpacingSemanticToken(compact: letterSpacingHeadingXlargeMobile, regular: letterSpacingHeadingXlargeTablet) }
    @objc open var letterSpacingHeadingLarge: MultipleFontLetterSpacingSemanticToken { MultipleFontLetterSpacingSemanticToken(compact: letterSpacingHeadingLargeMobile, regular: letterSpacingHeadingLargeTablet) }
    @objc open var letterSpacingHeadingMedium: MultipleFontLetterSpacingSemanticToken { MultipleFontLetterSpacingSemanticToken(compact: letterSpacingHeadingMediumMobile, regular: letterSpacingHeadingMediumTablet) }
    @objc open var letterSpacingHeadingSmall: MultipleFontLetterSpacingSemanticToken { MultipleFontLetterSpacingSemanticToken(compact: letterSpacingHeadingSmallMobile, regular: letterSpacingHeadingSmallTablet) }
    @objc open var letterSpacingBodyLarge: MultipleFontLetterSpacingSemanticToken { MultipleFontLetterSpacingSemanticToken(compact: letterSpacingBodyLargeMobile, regular: letterSpacingBodyLargeTablet) }
    @objc open var letterSpacingBodyMedium: MultipleFontLetterSpacingSemanticToken { MultipleFontLetterSpacingSemanticToken(compact: letterSpacingBodyMediumMobile, regular: letterSpacingBodyMediumTablet) }
    @objc open var letterSpacingBodySmall: MultipleFontLetterSpacingSemanticToken { MultipleFontLetterSpacingSemanticToken(compact: letterSpacingBodySmallMobile, regular: letterSpacingBodySmallTablet) }
}

// swiftlint:enable line_length
