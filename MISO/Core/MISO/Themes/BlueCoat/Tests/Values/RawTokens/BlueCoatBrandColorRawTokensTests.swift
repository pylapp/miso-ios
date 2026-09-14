// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOThemesMISOBlueCoat
import Testing
import TestsUtils

// swiftlint:disable type_body_length
// swiftlint:disable force_try
// swiftlint:disable file_length

/// The aim of this tests class is to look for regressions in **BlueCoat brand color raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break these tests because there are new values.
/// However, in the semantics of **BlueCoat brand color raw tokens**, there will be some unchanged things like relationships between tokens.
///
/// Here are some rules to follow:
/// - all colors must be different
/// - for a group of colors, the higher the token is, the darker the color is
/// - all colors must have an hexadecimal sring value with 8 b16 digits
struct BlueCoatBrandColorRawTokensTests {

    // MARK: - Settings

    /// The regular expression pattern to check the colors are in hexa format
    private static let colorFormat = try! NSRegularExpression(pattern: "^#[0-9A-Fa-f]{8}$")

    // MARK: - Tests lighter colors

    @Test func blueCoatBrandColorRawTokenRoyalBlue50LighterThanRoyalBlue100() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.royalBlue50, BlueCoatBrandColorRawTokens.royalBlue100)
    }

    @Test func blueCoatBrandColorRawTokenRoyalBlue100LighterThanRoyalBlue200() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.royalBlue100, BlueCoatBrandColorRawTokens.royalBlue200)
    }

    @Test func blueCoatBrandColorRawTokenRoyalBlue200LighterThanRoyalBlue300() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.royalBlue200, BlueCoatBrandColorRawTokens.royalBlue300)
    }

    @Test func blueCoatBrandColorRawTokenRoyalBlue300LighterThanRoyalBlue400() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.royalBlue300, BlueCoatBrandColorRawTokens.royalBlue400)
    }

    @Test func blueCoatBrandColorRawTokenRoyalBlue400LighterThanRoyalBlue500() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.royalBlue400, BlueCoatBrandColorRawTokens.royalBlue500)
    }

    @Test func blueCoatBrandColorRawTokenRoyalBlue500LighterThanRoyalBlue600() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.royalBlue500, BlueCoatBrandColorRawTokens.royalBlue600)
    }

    @Test func blueCoatBrandColorRawTokenRoyalBlue600DarkerThanRoyalBlue700() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.royalBlue600, BlueCoatBrandColorRawTokens.royalBlue700)
    }

    @Test func blueCoatBrandColorRawTokenRoyalBlue700LighterThanRoyalBlue800() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.royalBlue700, BlueCoatBrandColorRawTokens.royalBlue800)
    }

    @Test func blueCoatBrandColorRawTokenRoyalBlue800LighterThanRoyalBlue900() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.royalBlue800, BlueCoatBrandColorRawTokens.royalBlue900)
    }

    @Test func blueCoatBrandColorRawTokenRoyalBlue900LighterThanRoyalBlue950() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.royalBlue900, BlueCoatBrandColorRawTokens.royalBlue950)
    }

    @Test func blueCoatBrandColorRawTokenRoyalBlue950LighterThanRoyalBlue1000() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.royalBlue950, BlueCoatBrandColorRawTokens.royalBlue1000)
    }

    @Test func blueCoatBrandColorRawTokenRustyRed50LighterThanRustyRed100() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.rustyRed50, BlueCoatBrandColorRawTokens.rustyRed100)
    }

    @Test func blueCoatBrandColorRawTokenRustyRed100LighterThanRustyRed200() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.rustyRed100, BlueCoatBrandColorRawTokens.rustyRed200)
    }

    @Test func blueCoatBrandColorRawTokenRustyRed200LighterThanRustyRed300() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.rustyRed200, BlueCoatBrandColorRawTokens.rustyRed300)
    }

    @Test func blueCoatBrandColorRawTokenRustyRed300LighterThanRustyRed400() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.rustyRed300, BlueCoatBrandColorRawTokens.rustyRed400)
    }

    @Test func blueCoatBrandColorRawTokenRustyRed400LighterThanRustyRed500() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.rustyRed400, BlueCoatBrandColorRawTokens.rustyRed500)
    }

    @Test func blueCoatBrandColorRawTokenRustyRed500LighterThanRustyRed600() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.rustyRed500, BlueCoatBrandColorRawTokens.rustyRed600)
    }

    @Test func blueCoatBrandColorRawTokenRustyRed600LighterThanRustyRed700() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.rustyRed600, BlueCoatBrandColorRawTokens.rustyRed700)
    }

    @Test func blueCoatBrandColorRawTokenRustyRed700LighterThanRustyRed800() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.rustyRed700, BlueCoatBrandColorRawTokens.rustyRed800)
    }

    @Test func blueCoatBrandColorRawTokenRustyRed800LighterThanRustyRed900() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.rustyRed800, BlueCoatBrandColorRawTokens.rustyRed900)
    }

    @Test func blueCoatBrandColorRawTokenRustyRed900LighterThanRustyRed950() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.rustyRed900, BlueCoatBrandColorRawTokens.rustyRed950)
    }

    @Test func blueCoatBrandColorRawTokenRustyRed950LighterThanRustyRed1000() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.rustyRed950, BlueCoatBrandColorRawTokens.rustyRed1000)
    }

    @Test func blueCoatBrandColorRawTokenFlame50LighterThanFlame100() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.flame50, BlueCoatBrandColorRawTokens.flame100)
    }

    @Test func blueCoatBrandColorRawTokenFlame100LighterThanFlame200() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.flame100, BlueCoatBrandColorRawTokens.flame200)
    }

    @Test func blueCoatBrandColorRawTokenFlame200LighterThanFlame300() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.flame200, BlueCoatBrandColorRawTokens.flame300)
    }

    @Test func blueCoatBrandColorRawTokenFlame300LighterThanFlame400() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.flame300, BlueCoatBrandColorRawTokens.flame400)
    }

    @Test func blueCoatBrandColorRawTokenFlame400LighterThanFlame500() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.flame400, BlueCoatBrandColorRawTokens.flame500)
    }

    @Test func blueCoatBrandColorRawTokenFlame500LighterThanFlame600() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.flame500, BlueCoatBrandColorRawTokens.flame600)
    }

    @Test func blueCoatBrandColorRawTokenFlame600LighterThanFlame700() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.flame600, BlueCoatBrandColorRawTokens.flame700)
    }

    @Test func blueCoatBrandColorRawTokenFlame700LighterThanFlame800() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.flame700, BlueCoatBrandColorRawTokens.flame800)
    }

    @Test func blueCoatBrandColorRawTokenFlame800LighterThanFlame900() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.flame800, BlueCoatBrandColorRawTokens.flame900)
    }

    @Test func blueCoatBrandColorRawTokenFlame900LighterThanFlame950() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.flame900, BlueCoatBrandColorRawTokens.flame950)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayLight80LighterThanColorFunctionalGrayLight160() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayLight80, BlueCoatBrandColorRawTokens.functionalGrayLight160)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayLight160LighterThanColorFunctionalGrayLight240() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayLight160, BlueCoatBrandColorRawTokens.functionalGrayLight240)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayLight240LighterThanColorFunctionalGrayLight320() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayLight240, BlueCoatBrandColorRawTokens.functionalGrayLight320)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayLight320LighterThanColorFunctionalGrayLight400() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayLight320, BlueCoatBrandColorRawTokens.functionalGrayLight400)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayLight400LighterThanColorFunctionalGrayLight480() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayLight400, BlueCoatBrandColorRawTokens.functionalGrayLight480)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayLight480LighterThanColorFunctionalGrayLight560() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayLight480, BlueCoatBrandColorRawTokens.functionalGrayLight560)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayLight560LighterThanColorFunctionalGrayLight640() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayLight560, BlueCoatBrandColorRawTokens.functionalGrayLight640)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayLight640LighterThanColorFunctionalGrayLight720() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayLight640, BlueCoatBrandColorRawTokens.functionalGrayLight720)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayLight720LighterThanColorFunctionalGrayLight800() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayLight720, BlueCoatBrandColorRawTokens.functionalGrayLight800)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayLight800LighterThanColorFunctionalGrayLight880() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayLight800, BlueCoatBrandColorRawTokens.functionalGrayLight880)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayLight880LighterThanColorFunctionalGrayLight960() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayLight880, BlueCoatBrandColorRawTokens.functionalGrayLight960)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayDark80LighterThanColorFunctionalGrayDark160() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayDark80, BlueCoatBrandColorRawTokens.functionalGrayDark160)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayDark160LighterThanColorFunctionalGrayDark240() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayDark160, BlueCoatBrandColorRawTokens.functionalGrayDark240)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayDark240LighterThanColorFunctionalGrayDark320() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayDark240, BlueCoatBrandColorRawTokens.functionalGrayDark320)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayDark320LighterThanColorFunctionalGrayDark400() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayDark320, BlueCoatBrandColorRawTokens.functionalGrayDark400)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayDark400LighterThanColorFunctionalGrayDark480() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayDark400, BlueCoatBrandColorRawTokens.functionalGrayDark480)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayDark480LighterThanColorFunctionalGrayDark560() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayDark480, BlueCoatBrandColorRawTokens.functionalGrayDark560)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayDark560LighterThanColorFunctionalGrayDark640() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayDark560, BlueCoatBrandColorRawTokens.functionalGrayDark640)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayDark640LighterThanColorFunctionalGrayDark720() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayDark640, BlueCoatBrandColorRawTokens.functionalGrayDark720)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayDark720LighterThanColorFunctionalGrayDark800() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayDark720, BlueCoatBrandColorRawTokens.functionalGrayDark800)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayDark800LighterThanColorFunctionalGrayDark880() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayDark800, BlueCoatBrandColorRawTokens.functionalGrayDark880)
    }

    @Test func blueCoatBrandColorRawTokenColorFunctionalGrayDark880LighterThanColorFunctionalGrayDark960() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.functionalGrayDark880, BlueCoatBrandColorRawTokens.functionalGrayDark960)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite0DarkerThanColorOpacityWhite40() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white0, BlueCoatBrandColorRawTokens.white40)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite40DarkerThanColorOpacityWhite80() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white40, BlueCoatBrandColorRawTokens.white80)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite80DarkerThanColorOpacityWhite120() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white80, BlueCoatBrandColorRawTokens.white120)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite120DarkerThanColorOpacityWhite160() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white120, BlueCoatBrandColorRawTokens.white160)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite160DarkerThanColorOpacityWhite200() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white160, BlueCoatBrandColorRawTokens.white200)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite200DarkerThanColorOpacityWhite240() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white200, BlueCoatBrandColorRawTokens.white240)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite240DarkerThanColorOpacityWhite280() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white240, BlueCoatBrandColorRawTokens.white280)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite280DarkerThanColorOpacityWhite320() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white280, BlueCoatBrandColorRawTokens.white320)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite320DarkerThanColorOpacityWhite360() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white320, BlueCoatBrandColorRawTokens.white360)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite360DarkerThanColorOpacityWhite400() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white360, BlueCoatBrandColorRawTokens.white400)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite400DarkerThanColorOpacityWhite440() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white400, BlueCoatBrandColorRawTokens.white440)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite440DarkerThanColorOpacityWhite480() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white440, BlueCoatBrandColorRawTokens.white480)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite480DarkerThanColorOpacityWhite520() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white480, BlueCoatBrandColorRawTokens.white520)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite520DarkerThanColorOpacityWhite560() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white520, BlueCoatBrandColorRawTokens.white560)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite560DarkerThanColorOpacityWhite600() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white560, BlueCoatBrandColorRawTokens.white600)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite600DarkerThanColorOpacityWhite640() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white600, BlueCoatBrandColorRawTokens.white640)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite640DarkerThanColorOpacityWhite680() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white640, BlueCoatBrandColorRawTokens.white680)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite680DarkerThanColorOpacityWhite720() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white680, BlueCoatBrandColorRawTokens.white720)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite720DarkerThanColorOpacityWhite760() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white720, BlueCoatBrandColorRawTokens.white760)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite760DarkerThanColorOpacityWhite800() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white760, BlueCoatBrandColorRawTokens.white800)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite800DarkerThanColorOpacityWhite840() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white800, BlueCoatBrandColorRawTokens.white840)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite840DarkerThanColorOpacityWhite880() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white840, BlueCoatBrandColorRawTokens.white880)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite880DarkerThanColorOpacityWhite920() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white880, BlueCoatBrandColorRawTokens.white920)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityWhite920DarkerThanColorOpacityWhite960() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.white920, BlueCoatBrandColorRawTokens.white960)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack0DarkerThanColorOpacityBlack40() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack0, BlueCoatBrandColorRawTokens.opacityBlack40)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack40DarkerThanColorOpacityBlack80() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack40, BlueCoatBrandColorRawTokens.opacityBlack80)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack80DarkerThanColorOpacityBlack120() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack80, BlueCoatBrandColorRawTokens.opacityBlack120)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack120DarkerThanColorOpacityBlack160() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack120, BlueCoatBrandColorRawTokens.opacityBlack160)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack160DarkerThanColorOpacityBlack200() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack160, BlueCoatBrandColorRawTokens.opacityBlack200)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack200DarkerThanColorOpacityBlack240() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack200, BlueCoatBrandColorRawTokens.opacityBlack240)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack240DarkerThanColorOpacityBlack280() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack240, BlueCoatBrandColorRawTokens.opacityBlack280)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack280DarkerThanColorOpacityBlack320() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack280, BlueCoatBrandColorRawTokens.opacityBlack320)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack320DarkerThanColorOpacityBlack360() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack320, BlueCoatBrandColorRawTokens.opacityBlack360)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack360DarkerThanColorOpacityBlack400() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack360, BlueCoatBrandColorRawTokens.opacityBlack400)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack400DarkerThanColorOpacityBlack440() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack400, BlueCoatBrandColorRawTokens.opacityBlack440)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack440DarkerThanColorOpacityBlack480() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack440, BlueCoatBrandColorRawTokens.opacityBlack480)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack480DarkerThanColorOpacityBlack520() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack480, BlueCoatBrandColorRawTokens.opacityBlack520)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack520DarkerThanColorOpacityBlack560() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack520, BlueCoatBrandColorRawTokens.opacityBlack560)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack560DarkerThanColorOpacityBlack600() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack560, BlueCoatBrandColorRawTokens.opacityBlack600)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack600DarkerThanColorOpacityBlack640() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack600, BlueCoatBrandColorRawTokens.opacityBlack640)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack640DarkerThanColorOpacityBlack680() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack640, BlueCoatBrandColorRawTokens.opacityBlack680)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack680DarkerThanColorOpacityBlack720() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack680, BlueCoatBrandColorRawTokens.opacityBlack720)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack720DarkerThanColorOpacityBlack760() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack720, BlueCoatBrandColorRawTokens.opacityBlack760)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack760DarkerThanColorOpacityBlack800() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack760, BlueCoatBrandColorRawTokens.opacityBlack800)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack800DarkerThanColorOpacityBlack840() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack800, BlueCoatBrandColorRawTokens.opacityBlack840)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack840DarkerThanColorOpacityBlack880() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack840, BlueCoatBrandColorRawTokens.opacityBlack880)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack880DarkerThanColorOpacityBlack920() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack880, BlueCoatBrandColorRawTokens.opacityBlack920)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityBlack920DarkerThanColorOpacityBlack960() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityBlack920, BlueCoatBrandColorRawTokens.opacityBlack960)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue0DarkerThanColorOpacityRoyalBlue40() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue0, BlueCoatBrandColorRawTokens.opacityRoyalBlue40)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue40DarkerThanColorOpacityRoyalBlue80() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue40, BlueCoatBrandColorRawTokens.opacityRoyalBlue80)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue80DarkerThanColorOpacityRoyalBlue120() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue80, BlueCoatBrandColorRawTokens.opacityRoyalBlue120)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue120DarkerThanColorOpacityRoyalBlue160() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue120, BlueCoatBrandColorRawTokens.opacityRoyalBlue160)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue160DarkerThanColorOpacityRoyalBlue200() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue160, BlueCoatBrandColorRawTokens.opacityRoyalBlue200)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue200DarkerThanColorOpacityRoyalBlue240() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue200, BlueCoatBrandColorRawTokens.opacityRoyalBlue240)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue240DarkerThanColorOpacityRoyalBlue280() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue240, BlueCoatBrandColorRawTokens.opacityRoyalBlue280)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue280DarkerThanColorOpacityRoyalBlue320() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue280, BlueCoatBrandColorRawTokens.opacityRoyalBlue320)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue320DarkerThanColorOpacityRoyalBlue360() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue320, BlueCoatBrandColorRawTokens.opacityRoyalBlue360)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue360DarkerThanColorOpacityRoyalBlue400() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue360, BlueCoatBrandColorRawTokens.opacityRoyalBlue400)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue400DarkerThanColorOpacityRoyalBlue440() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue400, BlueCoatBrandColorRawTokens.opacityRoyalBlue440)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue440DarkerThanColorOpacityRoyalBlue480() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue440, BlueCoatBrandColorRawTokens.opacityRoyalBlue480)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue480DarkerThanColorOpacityRoyalBlue520() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue480, BlueCoatBrandColorRawTokens.opacityRoyalBlue520)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue520DarkerThanColorOpacityRoyalBlue560() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue520, BlueCoatBrandColorRawTokens.opacityRoyalBlue560)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue560DarkerThanColorOpacityRoyalBlue600() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue560, BlueCoatBrandColorRawTokens.opacityRoyalBlue600)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue600DarkerThanColorOpacityRoyalBlue640() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue600, BlueCoatBrandColorRawTokens.opacityRoyalBlue640)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue640DarkerThanColorOpacityRoyalBlue680() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue640, BlueCoatBrandColorRawTokens.opacityRoyalBlue680)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue680DarkerThanColorOpacityRoyalBlue720() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue680, BlueCoatBrandColorRawTokens.opacityRoyalBlue720)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue720DarkerThanColorOpacityRoyalBlue760() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue720, BlueCoatBrandColorRawTokens.opacityRoyalBlue760)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue760DarkerThanColorOpacityRoyalBlue800() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue760, BlueCoatBrandColorRawTokens.opacityRoyalBlue800)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue800DarkerThanColorOpacityRoyalBlue840() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue800, BlueCoatBrandColorRawTokens.opacityRoyalBlue840)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue840DarkerThanColorOpacityRoyalBlue880() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue840, BlueCoatBrandColorRawTokens.opacityRoyalBlue880)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue880DarkerThanColorOpacityRoyalBlue920() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue880, BlueCoatBrandColorRawTokens.opacityRoyalBlue920)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRoyalBlue920DarkerThanColorOpacityRoyalBlue960() throws {
        TestsUtils.assertColorDarkerThan(BlueCoatBrandColorRawTokens.opacityRoyalBlue920, BlueCoatBrandColorRawTokens.opacityRoyalBlue960)
    }

    @Test func blueCoatBrandColorRawTokenColorOpacityRustyRed80DLighterThanColorOpacityRustyRed680() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.opacityRustyRed80, BlueCoatBrandColorRawTokens.opacityRustyRed680)
    }

    @Test func blueCoatBrandColorRawTokenColorGoldTips50LighterThanColorGoldTips100() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorGoldTips50, BlueCoatBrandColorRawTokens.colorGoldTips100)
    }

    @Test func blueCoatBrandColorRawTokenColorGoldTips100LighterThanColorGoldTips200() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorGoldTips100, BlueCoatBrandColorRawTokens.colorGoldTips200)
    }

    @Test func blueCoatBrandColorRawTokenColorGoldTips200LighterThanColorGoldTips300() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorGoldTips200, BlueCoatBrandColorRawTokens.colorGoldTips300)
    }

    @Test func blueCoatBrandColorRawTokenColorGoldTips300LighterThanColorGoldTips400() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorGoldTips300, BlueCoatBrandColorRawTokens.colorGoldTips400)
    }

    @Test func blueCoatBrandColorRawTokenColorGoldTips400LighterThanColorGoldTips500() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorGoldTips400, BlueCoatBrandColorRawTokens.colorGoldTips500)
    }

    @Test func blueCoatBrandColorRawTokenColorGoldTips500LighterThanColorGoldTips600() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorGoldTips500, BlueCoatBrandColorRawTokens.colorGoldTips600)
    }

    @Test func blueCoatBrandColorRawTokenColorGoldTips600LighterThanColorGoldTips700() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorGoldTips600, BlueCoatBrandColorRawTokens.colorGoldTips700)
    }

    @Test func blueCoatBrandColorRawTokenColorGoldTips700LighterThanColorGoldTips800() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorGoldTips700, BlueCoatBrandColorRawTokens.colorGoldTips800)
    }

    @Test func blueCoatBrandColorRawTokenColorGoldTips800LighterThanColorGoldTips900() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorGoldTips800, BlueCoatBrandColorRawTokens.colorGoldTips900)
    }

    @Test func blueCoatBrandColorRawTokenColorGoldTips900LighterThanColorGoldTips950() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorGoldTips900, BlueCoatBrandColorRawTokens.colorGoldTips950)
    }

    @Test func blueCoatBrandColorRawTokenColorLightIndigo50LighterThanColorLightIndigo100() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorLightIndigo50, BlueCoatBrandColorRawTokens.colorLightIndigo100)
    }

    @Test func blueCoatBrandColorRawTokenColorLightIndigo100LighterThanColorLightIndigo200() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorLightIndigo100, BlueCoatBrandColorRawTokens.colorLightIndigo200)
    }

    @Test func blueCoatBrandColorRawTokenColorLightIndigo200LighterThanColorLightIndigo300() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorLightIndigo200, BlueCoatBrandColorRawTokens.colorLightIndigo300)
    }

    @Test func blueCoatBrandColorRawTokenColorLightIndigo300LighterThanColorLightIndigo400() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorLightIndigo300, BlueCoatBrandColorRawTokens.colorLightIndigo400)
    }

    @Test func blueCoatBrandColorRawTokenColorLightIndigo400LighterThanColorLightIndigo500() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorLightIndigo400, BlueCoatBrandColorRawTokens.colorLightIndigo500)
    }

    @Test func blueCoatBrandColorRawTokenColorLightIndigo500LighterThanColorLightIndigo600() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorLightIndigo500, BlueCoatBrandColorRawTokens.colorLightIndigo600)
    }

    @Test func blueCoatBrandColorRawTokenColorLightIndigo600LighterThanColorLightIndigo700() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorLightIndigo600, BlueCoatBrandColorRawTokens.colorLightIndigo700)
    }

    @Test func blueCoatBrandColorRawTokenColorLightIndigo700LighterThanColorLightIndigo800() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorLightIndigo700, BlueCoatBrandColorRawTokens.colorLightIndigo800)
    }

    @Test func blueCoatBrandColorRawTokenColorLightIndigo800LighterThanColorLightIndigo900() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorLightIndigo800, BlueCoatBrandColorRawTokens.colorLightIndigo900)
    }

    @Test func blueCoatBrandColorRawTokenColorLightIndigo900LighterThanColorLightIndigo950() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorLightIndigo900, BlueCoatBrandColorRawTokens.colorLightIndigo950)
    }

    @Test func blueCoatBrandColorRawTokenColorLightIndigo950LighterThanColorLightIndigo1000() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorLightIndigo950, BlueCoatBrandColorRawTokens.colorLightIndigo1000)
    }

    @Test func blueCoatBrandColorRawTokenColorMountainMeadow50LighterThanColorMountainMeadow100() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorMountainMeadow50, BlueCoatBrandColorRawTokens.colorMountainMeadow100)
    }

    @Test func blueCoatBrandColorRawTokenColorMountainMeadow100LighterThanColorMountainMeadow200() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorMountainMeadow100, BlueCoatBrandColorRawTokens.colorMountainMeadow200)
    }

    @Test func blueCoatBrandColorRawTokenColorMountainMeadow200LighterThanColorMountainMeadow300() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorMountainMeadow200, BlueCoatBrandColorRawTokens.colorMountainMeadow300)
    }

    @Test func blueCoatBrandColorRawTokenColorMountainMeadow300LighterThanColorMountainMeadow400() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorMountainMeadow300, BlueCoatBrandColorRawTokens.colorMountainMeadow400)
    }

    @Test func blueCoatBrandColorRawTokenColorMountainMeadow400LighterThanColorMountainMeadow500() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorMountainMeadow400, BlueCoatBrandColorRawTokens.colorMountainMeadow500)
    }

    @Test func blueCoatBrandColorRawTokenColorMountainMeadow500LighterThanColorMountainMeadow600() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorMountainMeadow500, BlueCoatBrandColorRawTokens.colorMountainMeadow600)
    }

    @Test func blueCoatBrandColorRawTokenColorMountainMeadow600LighterThanColorMountainMeadow700() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorMountainMeadow600, BlueCoatBrandColorRawTokens.colorMountainMeadow700)
    }

    @Test func blueCoatBrandColorRawTokenColorMountainMeadow700LighterThanColorMountainMeadow800() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorMountainMeadow700, BlueCoatBrandColorRawTokens.colorMountainMeadow800)
    }

    @Test func blueCoatBrandColorRawTokenColorMountainMeadow800LighterThanColorMountainMeadow900() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorMountainMeadow800, BlueCoatBrandColorRawTokens.colorMountainMeadow900)
    }

    @Test func blueCoatBrandColorRawTokenColorMountainMeadow900LighterThanColorMountainMeadow950() throws {
        TestsUtils.assertColorLighterThan(BlueCoatBrandColorRawTokens.colorMountainMeadow900, BlueCoatBrandColorRawTokens.colorMountainMeadow950)
    }

    // MARK: - Tests format

    @Test func colorRawTokenRoyalBlue50Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.royalBlue50, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue100Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.royalBlue100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue200Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.royalBlue200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue300Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.royalBlue300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue400Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.royalBlue400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue500Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.royalBlue500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue600Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.royalBlue600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue700Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.royalBlue700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue800Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.royalBlue800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue900Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.royalBlue900, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue950Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.royalBlue950, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRoyalBlue1000Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.royalBlue1000, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed50Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.rustyRed50, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed100Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.rustyRed100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed200Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.rustyRed200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed300Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.rustyRed300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed400Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.rustyRed400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed500Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.rustyRed500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed600Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.rustyRed600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed700Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.rustyRed700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed800Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.rustyRed800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed900Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.rustyRed900, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed950Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.rustyRed950, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenRustyRed1000Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.rustyRed1000, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame50Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.flame50, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame100Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.flame100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame200Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.flame200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame300Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.flame300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame400Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.flame400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame500Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.flame500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame600Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.flame600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame700Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.flame700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame800Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.flame800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame900Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.flame900, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenFlame950Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.flame950, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight80Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayLight80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight160Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayLight160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight240Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayLight240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight320Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayLight320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight400Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayLight400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight480Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayLight480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight560Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayLight560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight640Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayLight640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight720Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayLight720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight800Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayLight800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight880Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayLight880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayLight960Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayLight960, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark80Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayDark80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark160Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayDark160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark240Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayDark240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark320Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayDark320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark400Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayDark400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark480Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayDark480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark560Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayDark560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark640Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayDark640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark720Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayDark720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark800Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayDark800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark880Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayDark880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorFunctionalGrayDark960Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.functionalGrayDark960, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite0Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white0, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite40Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white40, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite80Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite120Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white120, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite160Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite200Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite240Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite280Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white280, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite320Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite360Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white360, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite400Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite440Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white440, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite480Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite520Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white520, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite560Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite600Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite640Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite680Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white680, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite720Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite760Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white760, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite800Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite840Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white840, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite880Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite920Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white920, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityWhite960Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.white960, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack0Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack0, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack40Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack40, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack80Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack120Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack120, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack160Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack200Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack240Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack280Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack280, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack320Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack360Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack360, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack400Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack440Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack440, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack480Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack520Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack520, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack560Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack600Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack640Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack680Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack680, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack720Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack760Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack760, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack800Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack840Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack840, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack880Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack920Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack920, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityBlack960Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityBlack960, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue0Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue0, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue40Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue40, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue80Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue120Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue120, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue160Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue160, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue200Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue240Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue240, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue280Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue280, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue320Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue320, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue360Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue360, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue400Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue440Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue440, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue480Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue480, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue520Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue520, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue560Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue560, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue600Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue640Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue640, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue680Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue680, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue720Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue720, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue760Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue760, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue800Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue840Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue840, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue880Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue880, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue920Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue920, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRoyalBlue960Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRoyalBlue960, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRustyRed80Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRustyRed80, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityRustyRed680Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityRustyRed680, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorOpacityGrayDark880800Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.opacityGrayDark880800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorGoldTips50Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorGoldTips50, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorGoldTips100Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorGoldTips100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorGoldTips200Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorGoldTips200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorGoldTips300Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorGoldTips300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorGoldTips400Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorGoldTips400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorGoldTips500Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorGoldTips500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorGoldTips600Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorGoldTips600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorGoldTips700Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorGoldTips700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorGoldTips800Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorGoldTips800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorGoldTips900Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorGoldTips900, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorGoldTips950Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorGoldTips950, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorLightIndigo50Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorLightIndigo50, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorLightIndigo100Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorLightIndigo100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorLightIndigo200Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorLightIndigo200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorLightIndigo300Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorLightIndigo300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorLightIndigo400Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorLightIndigo400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorLightIndigo500Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorLightIndigo500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorLightIndigo600Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorLightIndigo600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorLightIndigo700Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorLightIndigo700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorLightIndigo800Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorLightIndigo800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorLightIndigo900Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorLightIndigo900, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorLightIndigo950Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorLightIndigo950, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorLightIndigo1000Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorLightIndigo1000, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorMountainMeadow50Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorMountainMeadow50, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorMountainMeadow100Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorMountainMeadow100, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorMountainMeadow200Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorMountainMeadow200, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorMountainMeadow300Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorMountainMeadow300, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorMountainMeadow400Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorMountainMeadow400, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorMountainMeadow500Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorMountainMeadow500, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorMountainMeadow600Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorMountainMeadow600, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorMountainMeadow700Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorMountainMeadow700, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorMountainMeadow800Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorMountainMeadow800, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorMountainMeadow900Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorMountainMeadow900, regexp: Self.colorFormat)
    }

    @Test func colorRawTokenColorMountainMeadow950Format() throws {
        TestsUtils.assertMatches(BlueCoatBrandColorRawTokens.colorMountainMeadow950, regexp: Self.colorFormat)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable force_try
