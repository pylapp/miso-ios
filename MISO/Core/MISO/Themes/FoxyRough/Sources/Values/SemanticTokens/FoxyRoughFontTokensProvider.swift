// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOThemesMISOBlueCoat
import MISOTokensRaw
import MISOTokensSemantic

/// Custom font semantic tokens provider for FoxyRough.
/// Sublasses `DefaultFontSemanticTokensProvider`, i.e. `BlueCoatFontSemanticTokensProvider`.
///
/// - Since: 1.1.0
open class FoxyRoughFontSemanticTokensProvider: DefaultFontSemanticTokensProvider {

    deinit {}

    /// Has for value token familySystem (= "Winky Rough")
    override open var familyBody: FontFamilySemanticToken { familySystem }
    /// Has for value token FontRawTokens.familyMonospaceSfMono (= "SF Mono")
    override open var familyCode: FontFamilySemanticToken { FontRawTokens.familyMonospaceSfMono }
    /// Has for value token familySystem (= "Winky Rough")
    override open var familyDisplay: FontFamilySemanticToken { familySystem }
    /// Has for value token familySystem (= "Winky Rough")
    override open var familyHeading: FontFamilySemanticToken { familySystem }
    /// Has for value token familySystem (= "Winky Rough")
    override open var familyLabel: FontFamilySemanticToken { familySystem }
    /// Has for value token OrangeBrandFontRawTokens.familyBrandDefault (= "Winky Rough")
    override open var familySystem: FontFamilySemanticToken { "Winky Rough" }
    /// Has for value token FontRawTokens.letterSpacing250 (= 0.2)
    override open var letterSpacingBodyLargeMobile: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing250 }
    /// Has for value token FontRawTokens.letterSpacing250 (= 0.2)
    override open var letterSpacingBodyLargeTablet: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing250 }
    /// Has for value token FontRawTokens.letterSpacing200 (= 0.17)
    override open var letterSpacingBodyMediumMobile: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing200 }
    /// Has for value token FontRawTokens.letterSpacing200 (= 0.17)
    override open var letterSpacingBodyMediumTablet: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing200 }
    /// Has for value token FontRawTokens.letterSpacing150 (= 0.18)
    override open var letterSpacingBodySmallMobile: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing150 }
    /// Has for value token FontRawTokens.letterSpacing150 (= 0.18)
    override open var letterSpacingBodySmallTablet: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing150 }
    /// Has for value token FontRawTokens.letterSpacing200 (= 0.17)
    override open var letterSpacingCodeMedium: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing200 }
    /// Has for value token FontRawTokens.letterSpacing850 (= -0.4)
    override open var letterSpacingDisplayLargeMobile: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing850 }
    /// Has for value token FontRawTokens.letterSpacing1450 (= -0.96)
    override open var letterSpacingDisplayLargeTablet: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing1450 }
    /// Has for value token FontRawTokens.letterSpacing750 (= -0.36)
    override open var letterSpacingDisplayMediumMobile: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing750 }
    /// Has for value token FontRawTokens.letterSpacing1050 (= -0.6)
    override open var letterSpacingDisplayMediumTablet: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing1050 }
    /// Has for value token FontRawTokens.letterSpacing650 (= -0.32)
    override open var letterSpacingDisplaySmallMobile: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing650 }
    /// Has for value token FontRawTokens.letterSpacing850 (= -0.4)
    override open var letterSpacingDisplaySmallTablet: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing850 }
    /// Has for value token FontRawTokens.letterSpacing450 (= -0.12)
    override open var letterSpacingHeadingLargeMobile: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing450 }
    /// Has for value token FontRawTokens.letterSpacing550 (= -0.28)
    override open var letterSpacingHeadingLargeTablet: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing550 }
    /// Has for value token FontRawTokens.letterSpacing350 (= 0)
    override open var letterSpacingHeadingMediumMobile: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing350 }
    /// Has for value token FontRawTokens.letterSpacing450 (= -0.12)
    override open var letterSpacingHeadingMediumTablet: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing450 }
    /// Has for value token FontRawTokens.letterSpacing300 (= 0.18)
    override open var letterSpacingHeadingSmallMobile: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing300 }
    /// Has for value token FontRawTokens.letterSpacing350 (= 0)
    override open var letterSpacingHeadingSmallTablet: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing350 }
    /// Has for value token FontRawTokens.letterSpacing550 (= -0.28)
    override open var letterSpacingHeadingXlargeMobile: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing550 }
    /// Has for value token FontRawTokens.letterSpacing750 (= -0.36)
    override open var letterSpacingHeadingXlargeTablet: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing750 }
    /// Has for value token FontRawTokens.letterSpacing250 (= 0.2)
    override open var letterSpacingLabelLarge: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing250 }
    /// Has for value token FontRawTokens.letterSpacing200 (= 0.17)
    override open var letterSpacingLabelMedium: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing200 }
    /// Has for value token FontRawTokens.letterSpacing150 (= 0.18)
    override open var letterSpacingLabelSmall: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing150 }
    /// Has for value token FontRawTokens.letterSpacing300 (= 0.18)
    override open var letterSpacingLabelXlarge: FontLetterSpacingSemanticToken { FontRawTokens.letterSpacing300 }
    /// Has for value token FontRawTokens.lineHeight450 (= 24)
    override open var lineHeightBodyLargeMobile: FontLineHeightSemanticToken { FontRawTokens.lineHeight450 }
    /// Has for value token FontRawTokens.lineHeight450 (= 24)
    override open var lineHeightBodyLargeTablet: FontLineHeightSemanticToken { FontRawTokens.lineHeight450 }
    /// Has for value token FontRawTokens.lineHeight350 (= 20)
    override open var lineHeightBodyMediumMobile: FontLineHeightSemanticToken { FontRawTokens.lineHeight350 }
    /// Has for value token FontRawTokens.lineHeight350 (= 20)
    override open var lineHeightBodyMediumTablet: FontLineHeightSemanticToken { FontRawTokens.lineHeight350 }
    /// Has for value token FontRawTokens.lineHeight250 (= 16)
    override open var lineHeightBodySmallMobile: FontLineHeightSemanticToken { FontRawTokens.lineHeight250 }
    /// Has for value token FontRawTokens.lineHeight250 (= 16)
    override open var lineHeightBodySmallTablet: FontLineHeightSemanticToken { FontRawTokens.lineHeight250 }
    /// Has for value token FontRawTokens.lineHeight350 (= 20)
    override open var lineHeightCodeMedium: FontLineHeightSemanticToken { FontRawTokens.lineHeight350 }
    /// Has for value token FontRawTokens.lineHeight1050 (= 48)
    override open var lineHeightDisplayLargeMobile: FontLineHeightSemanticToken { FontRawTokens.lineHeight1050 }
    /// Has for value token FontRawTokens.lineHeight1850 (= 72)
    override open var lineHeightDisplayLargeTablet: FontLineHeightSemanticToken { FontRawTokens.lineHeight1850 }
    /// Has for value token FontRawTokens.lineHeight950 (= 44)
    override open var lineHeightDisplayMediumMobile: FontLineHeightSemanticToken { FontRawTokens.lineHeight950 }
    /// Has for value token FontRawTokens.lineHeight1250 (= 56)
    override open var lineHeightDisplayMediumTablet: FontLineHeightSemanticToken { FontRawTokens.lineHeight1250 }
    /// Has for value token FontRawTokens.lineHeight850 (= 40)
    override open var lineHeightDisplaySmallMobile: FontLineHeightSemanticToken { FontRawTokens.lineHeight850 }
    /// Has for value token FontRawTokens.lineHeight1050 (= 48)
    override open var lineHeightDisplaySmallTablet: FontLineHeightSemanticToken { FontRawTokens.lineHeight1050 }
    /// Has for value token FontRawTokens.lineHeight650 (= 32)
    override open var lineHeightHeadingLargeMobile: FontLineHeightSemanticToken { FontRawTokens.lineHeight650 }
    /// Has for value token FontRawTokens.lineHeight750 (= 36)
    override open var lineHeightHeadingLargeTablet: FontLineHeightSemanticToken { FontRawTokens.lineHeight750 }
    /// Has for value token FontRawTokens.lineHeight550 (= 28)
    override open var lineHeightHeadingMediumMobile: FontLineHeightSemanticToken { FontRawTokens.lineHeight550 }
    /// Has for value token FontRawTokens.lineHeight650 (= 32)
    override open var lineHeightHeadingMediumTablet: FontLineHeightSemanticToken { FontRawTokens.lineHeight650 }
    /// Has for value token FontRawTokens.lineHeight450 (= 24)
    override open var lineHeightHeadingSmallMobile: FontLineHeightSemanticToken { FontRawTokens.lineHeight450 }
    /// Has for value token FontRawTokens.lineHeight550 (= 28)
    override open var lineHeightHeadingSmallTablet: FontLineHeightSemanticToken { FontRawTokens.lineHeight550 }
    /// Has for value token FontRawTokens.lineHeight750 (= 36)
    override open var lineHeightHeadingXlargeMobile: FontLineHeightSemanticToken { FontRawTokens.lineHeight750 }
    /// Has for value token FontRawTokens.lineHeight950 (= 44)
    override open var lineHeightHeadingXlargeTablet: FontLineHeightSemanticToken { FontRawTokens.lineHeight950 }
    /// Has for value token FontRawTokens.lineHeight450 (= 24)
    override open var lineHeightLabelLarge: FontLineHeightSemanticToken { FontRawTokens.lineHeight450 }
    /// Has for value token FontRawTokens.lineHeight350 (= 20)
    override open var lineHeightLabelMedium: FontLineHeightSemanticToken { FontRawTokens.lineHeight350 }
    /// Has for value token FontRawTokens.lineHeight250 (= 16)
    override open var lineHeightLabelSmall: FontLineHeightSemanticToken { FontRawTokens.lineHeight250 }
    /// Has for value token FontRawTokens.lineHeight450 (= 24)
    override open var lineHeightLabelXlarge: FontLineHeightSemanticToken { FontRawTokens.lineHeight450 }
    /// Has for value token FontRawTokens.size250 (= 16)
    override open var sizeBodyLargeMobile: FontSizeSemanticToken { FontRawTokens.size250 }
    /// Has for value token FontRawTokens.size250 (= 16)
    override open var sizeBodyLargeTablet: FontSizeSemanticToken { FontRawTokens.size250 }
    /// Has for value token FontRawTokens.size200 (= 14)
    override open var sizeBodyMediumMobile: FontSizeSemanticToken { FontRawTokens.size200 }
    /// Has for value token FontRawTokens.size200 (= 14)
    override open var sizeBodyMediumTablet: FontSizeSemanticToken { FontRawTokens.size200 }
    /// Has for value token FontRawTokens.size150 (= 12)
    override open var sizeBodySmallMobile: FontSizeSemanticToken { FontRawTokens.size150 }
    /// Has for value token FontRawTokens.size150 (= 12)
    override open var sizeBodySmallTablet: FontSizeSemanticToken { FontRawTokens.size150 }
    /// Has for value token FontRawTokens.size200 (= 14)
    override open var sizeCodeMedium: FontSizeSemanticToken { FontRawTokens.size200 }
    /// Has for value token FontRawTokens.size850 (= 40)
    override open var sizeDisplayLargeMobile: FontSizeSemanticToken { FontRawTokens.size850 }
    /// Has for value token FontRawTokens.size1450 (= 64)
    override open var sizeDisplayLargeTablet: FontSizeSemanticToken { FontRawTokens.size1450 }
    /// Has for value token FontRawTokens.size750 (= 36)
    override open var sizeDisplayMediumMobile: FontSizeSemanticToken { FontRawTokens.size750 }
    /// Has for value token FontRawTokens.size1050 (= 48)
    override open var sizeDisplayMediumTablet: FontSizeSemanticToken { FontRawTokens.size1050 }
    /// Has for value token FontRawTokens.size650 (= 32)
    override open var sizeDisplaySmallMobile: FontSizeSemanticToken { FontRawTokens.size650 }
    /// Has for value token FontRawTokens.size850 (= 40)
    override open var sizeDisplaySmallTablet: FontSizeSemanticToken { FontRawTokens.size850 }
    /// Has for value token FontRawTokens.size450 (= 24)
    override open var sizeHeadingLargeMobile: FontSizeSemanticToken { FontRawTokens.size450 }
    /// Has for value token FontRawTokens.size550 (= 28)
    override open var sizeHeadingLargeTablet: FontSizeSemanticToken { FontRawTokens.size550 }
    /// Has for value token FontRawTokens.size350 (= 20)
    override open var sizeHeadingMediumMobile: FontSizeSemanticToken { FontRawTokens.size350 }
    /// Has for value token FontRawTokens.size450 (= 24)
    override open var sizeHeadingMediumTablet: FontSizeSemanticToken { FontRawTokens.size450 }
    /// Has for value token FontRawTokens.size300 (= 18)
    override open var sizeHeadingSmallMobile: FontSizeSemanticToken { FontRawTokens.size300 }
    /// Has for value token FontRawTokens.size350 (= 20)
    override open var sizeHeadingSmallTablet: FontSizeSemanticToken { FontRawTokens.size350 }
    /// Has for value token FontRawTokens.size550 (= 28)
    override open var sizeHeadingXlargeMobile: FontSizeSemanticToken { FontRawTokens.size550 }
    /// Has for value token FontRawTokens.size750 (= 36)
    override open var sizeHeadingXlargeTablet: FontSizeSemanticToken { FontRawTokens.size750 }
    /// Has for value token FontRawTokens.size250 (= 16)
    override open var sizeLabelLarge: FontSizeSemanticToken { FontRawTokens.size250 }
    /// Has for value token FontRawTokens.size200 (= 14)
    override open var sizeLabelMedium: FontSizeSemanticToken { FontRawTokens.size200 }
    /// Has for value token FontRawTokens.size150 (= 12)
    override open var sizeLabelSmall: FontSizeSemanticToken { FontRawTokens.size150 }
    /// Has for value token FontRawTokens.size300 (= 18)
    override open var sizeLabelXlarge: FontSizeSemanticToken { FontRawTokens.size300 }
    /// Has for value token weightSystemDefault (= "Regular")
    override open var weightBodyDefault: FontWeightSemanticToken { weightSystemDefault }
    /// Has for value token weightSystemModerate (= "Medium")
    override open var weightBodyModerate: FontWeightSemanticToken { weightSystemModerate }
    /// Has for value token weightSystemStrong (= "Bold")
    override open var weightBodyStrong: FontWeightSemanticToken { weightSystemStrong }
    /// Has for value token FontRawTokens.weight400 (= "Regular")
    override open var weightCode: FontWeightSemanticToken { FontRawTokens.weight400 }
    /// Has for value token weightSystemStrong (= "Bold")
    override open var weightDisplay: FontWeightSemanticToken { weightSystemStrong }
    /// Has for value token weightSystemStrong (= "Bold")
    override open var weightHeading: FontWeightSemanticToken { weightSystemStrong }
    /// Has for value token weightSystemDefault (= "Regular")
    override open var weightLabelDefault: FontWeightSemanticToken { weightSystemDefault }
    /// Has for value token weightSystemModerate (= "Medium")
    override open var weightLabelModerate: FontWeightSemanticToken { weightSystemModerate }
    /// Has for value token weightSystemStrong (= "Bold")
    override open var weightLabelStrong: FontWeightSemanticToken { weightSystemStrong }
    /// Has for value token FontRawTokens.weight400 (= "Regular")
    override open var weightSystemDefault: FontWeightSemanticToken { FontRawTokens.weight400 }
    /// Has for value token FontRawTokens.weight500 (= "Medium")
    override open var weightSystemModerate: FontWeightSemanticToken { FontRawTokens.weight500 }
    /// Has for value token FontRawTokens.weight700 (= "Bold")
    override open var weightSystemStrong: FontWeightSemanticToken { FontRawTokens.weight700 }
}
