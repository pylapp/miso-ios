// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
@testable import MISOThemesMISOFoxyRough
import Testing
import TestsUtils

// swiftlint:disable force_try

/// The aim of this tests class is to look for regressions in **FoxyRough raw color tokens**.
///
/// Rules to follow, mirroring the conventions used for `BlueCoatBrandColorRawTokensTests`:
/// - all colors must have an hexadecimal string value with 8 b16 digits (`#RRGGBBAA`)
/// - "pressed" / "dark" variants of a brand color must be darker than their "enabled" counterpart
/// - light-mode and dark-mode background/foreground colors must be distinct and opposite in brightness
struct FoxyRoughColorsTests {

    // MARK: - Settings

    /// The regular expression pattern to check the colors are in hexa format
    private static let colorFormat = try! NSRegularExpression(pattern: "^#[0-9A-Fa-f]{8}$")

    // MARK: - Format

    @Test func bloodRedFormat() {
        TestsUtils.assertMatches(FoxyRoughColors.bloodRed, regexp: Self.colorFormat)
    }

    @Test func vividRedFormat() {
        TestsUtils.assertMatches(FoxyRoughColors.vividRed, regexp: Self.colorFormat)
    }

    @Test func darkBloodRedFormat() {
        TestsUtils.assertMatches(FoxyRoughColors.darkBloodRed, regexp: Self.colorFormat)
    }

    @Test func darkVividRedFormat() {
        TestsUtils.assertMatches(FoxyRoughColors.darkVividRed, regexp: Self.colorFormat)
    }

    @Test func concreteGreyFormat() {
        TestsUtils.assertMatches(FoxyRoughColors.concreteGrey, regexp: Self.colorFormat)
    }

    @Test func nearBlackFormat() {
        TestsUtils.assertMatches(FoxyRoughColors.nearBlack, regexp: Self.colorFormat)
    }

    @Test func softGreyFormat() {
        TestsUtils.assertMatches(FoxyRoughColors.softGrey, regexp: Self.colorFormat)
    }

    @Test func deepGreyFormat() {
        TestsUtils.assertMatches(FoxyRoughColors.deepGrey, regexp: Self.colorFormat)
    }

    @Test func mutedLightFormat() {
        TestsUtils.assertMatches(FoxyRoughColors.mutedLight, regexp: Self.colorFormat)
    }

    @Test func mutedDarkFormat() {
        TestsUtils.assertMatches(FoxyRoughColors.mutedDark, regexp: Self.colorFormat)
    }

    @Test func borderLightFormat() {
        TestsUtils.assertMatches(FoxyRoughColors.borderLight, regexp: Self.colorFormat)
    }

    @Test func borderDarkFormat() {
        TestsUtils.assertMatches(FoxyRoughColors.borderDark, regexp: Self.colorFormat)
    }

    @Test func blackFormat() {
        TestsUtils.assertMatches(FoxyRoughColors.black, regexp: Self.colorFormat)
    }

    // MARK: - Relationships — brand red

    @Test func bloodRedLighterThanDarkBloodRed() {
        TestsUtils.assertColorLighterThan(FoxyRoughColors.bloodRed, FoxyRoughColors.darkBloodRed)
    }

    @Test func vividRedLighterThanDarkVividRed() {
        TestsUtils.assertColorLighterThan(FoxyRoughColors.vividRed, FoxyRoughColors.darkVividRed)
    }

    // MARK: - Relationships — backgrounds

    @Test func concreteGreyLighterThanSoftGrey() {
        TestsUtils.assertColorLighterThan(FoxyRoughColors.concreteGrey, FoxyRoughColors.softGrey)
    }

    @Test func deepGreyLighterThanNearBlack() {
        TestsUtils.assertColorLighterThan(FoxyRoughColors.deepGrey, FoxyRoughColors.nearBlack)
    }

    @Test func concreteGreyLighterThanNearBlack() {
        TestsUtils.assertColorLighterThan(FoxyRoughColors.concreteGrey, FoxyRoughColors.nearBlack)
    }

    // MARK: - Relationships — muted content

    @Test func mutedDarkLighterThanMutedLight() {
        // "mutedDark" is used as text on dark backgrounds, and thus is a lighter grey than "mutedLight"
        TestsUtils.assertColorLighterThan(FoxyRoughColors.mutedDark, FoxyRoughColors.mutedLight)
    }

    // MARK: - Relationships — borders

    @Test func borderLightLighterThanBorderDark() {
        TestsUtils.assertColorLighterThan(FoxyRoughColors.borderLight, FoxyRoughColors.borderDark)
    }

    // MARK: - Distinct values

    @Test func allColorsAreDifferent() {
        let colors = [
            FoxyRoughColors.bloodRed,
            FoxyRoughColors.vividRed,
            FoxyRoughColors.darkBloodRed,
            FoxyRoughColors.darkVividRed,
            FoxyRoughColors.concreteGrey,
            FoxyRoughColors.nearBlack,
            FoxyRoughColors.softGrey,
            FoxyRoughColors.deepGrey,
            FoxyRoughColors.mutedLight,
            FoxyRoughColors.mutedDark,
            FoxyRoughColors.borderLight,
            FoxyRoughColors.borderDark,
            FoxyRoughColors.black,
        ]
        #expect(Set(colors).count == colors.count)
    }
}

// swiftlint:enable force_try
