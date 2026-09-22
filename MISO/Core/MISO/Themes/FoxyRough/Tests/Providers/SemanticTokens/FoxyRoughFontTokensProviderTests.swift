// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

@testable import MISOThemesMISOFoxyRough
import MISOTokensRaw
import Testing

/// Checks if the FoxyRough font semantic tokens provider exposes the expected family names, weights,
/// and relationships between size / line height tokens.
struct FoxyRoughFontTokensProviderTests {

    private var provider: FoxyRoughFontSemanticTokensProvider

    init() {
        provider = FoxyRoughFontSemanticTokensProvider()
    }

    // MARK: - Families

    @Test func familySystemIsWinkyRough() {
        #expect(provider.familySystem == "Winky Rough")
    }

    @Test func familyBodyUsesSystem() {
        #expect(provider.familyBody == provider.familySystem)
    }

    @Test func familyDisplayUsesSystem() {
        #expect(provider.familyDisplay == provider.familySystem)
    }

    @Test func familyHeadingUsesSystem() {
        #expect(provider.familyHeading == provider.familySystem)
    }

    @Test func familyLabelUsesSystem() {
        #expect(provider.familyLabel == provider.familySystem)
    }

    @Test func familyCodeIsMonospace() {
        #expect(provider.familyCode == FontRawTokens.familyMonospaceSfMono)
    }

    // MARK: - Weights

    @Test func weightSystemDefaultIsRegular() {
        #expect(provider.weightSystemDefault == FontRawTokens.weight400)
    }

    @Test func weightSystemModerateIsMedium() {
        #expect(provider.weightSystemModerate == FontRawTokens.weight500)
    }

    @Test func weightSystemStrongIsBold() {
        #expect(provider.weightSystemStrong == FontRawTokens.weight700)
    }

    @Test func weightDisplayUsesStrong() {
        #expect(provider.weightDisplay == provider.weightSystemStrong)
    }

    @Test func weightHeadingUsesStrong() {
        #expect(provider.weightHeading == provider.weightSystemStrong)
    }

    @Test func weightBodyDefaultUsesDefault() {
        #expect(provider.weightBodyDefault == provider.weightSystemDefault)
    }

    @Test func weightCodeIsRegular() {
        #expect(provider.weightCode == FontRawTokens.weight400)
    }

    // MARK: - Sizes — relationships must be preserved (bigger and bigger)

    @Test("Display sizes must be bigger and bigger (mobile)")
    func sizeDisplayMobile() {
        #expect(provider.sizeDisplaySmallMobile < provider.sizeDisplayMediumMobile)
        #expect(provider.sizeDisplayMediumMobile < provider.sizeDisplayLargeMobile)
    }

    @Test("Heading sizes must be bigger and bigger (mobile)")
    func sizeHeadingMobile() {
        #expect(provider.sizeHeadingSmallMobile < provider.sizeHeadingMediumMobile)
        #expect(provider.sizeHeadingMediumMobile < provider.sizeHeadingLargeMobile)
        #expect(provider.sizeHeadingLargeMobile < provider.sizeHeadingXlargeMobile)
    }

    @Test("Body sizes must be bigger and bigger (mobile)")
    func sizeBodyMobile() {
        #expect(provider.sizeBodySmallMobile < provider.sizeBodyMediumMobile)
        #expect(provider.sizeBodyMediumMobile < provider.sizeBodyLargeMobile)
    }

    @Test("Label sizes must be bigger and bigger")
    func sizeLabel() {
        #expect(provider.sizeLabelSmall < provider.sizeLabelMedium)
        #expect(provider.sizeLabelMedium < provider.sizeLabelLarge)
        #expect(provider.sizeLabelLarge < provider.sizeLabelXlarge)
    }

    // MARK: - Line heights — relationships must be preserved

    @Test("Display line heights must be bigger and bigger (mobile)")
    func lineHeightDisplayMobile() {
        #expect(provider.lineHeightDisplaySmallMobile < provider.lineHeightDisplayMediumMobile)
        #expect(provider.lineHeightDisplayMediumMobile < provider.lineHeightDisplayLargeMobile)
    }

    @Test("Heading line heights must be bigger and bigger (mobile)")
    func lineHeightHeadingMobile() {
        #expect(provider.lineHeightHeadingSmallMobile < provider.lineHeightHeadingMediumMobile)
        #expect(provider.lineHeightHeadingMediumMobile < provider.lineHeightHeadingLargeMobile)
        #expect(provider.lineHeightHeadingLargeMobile < provider.lineHeightHeadingXlargeMobile)
    }

    @Test("Body line heights must be bigger and bigger (mobile)")
    func lineHeightBodyMobile() {
        #expect(provider.lineHeightBodySmallMobile < provider.lineHeightBodyMediumMobile)
        #expect(provider.lineHeightBodyMediumMobile < provider.lineHeightBodyLargeMobile)
    }
}
