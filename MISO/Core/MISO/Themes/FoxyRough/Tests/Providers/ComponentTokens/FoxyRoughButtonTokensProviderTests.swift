// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

@testable import MISOThemesMISOFoxyRough
import MISOTokensRaw
import Testing

/// Checks if the FoxyRough button component tokens provider exposes the expected `light` / `dark` color values
/// and shape tokens, as defined in ``FoxyRoughButtonTokensProvider``.
struct FoxyRoughButtonTokensProviderTests {

    private var provider: FoxyRoughButtonTokensProvider

    init() {
        provider = FoxyRoughButtonTokensProvider()
    }

    // MARK: - Default - Background (transparent, whatever the state)

    @Test func colorBgDefaultEnabled() {
        #expect(provider.colorBgDefaultEnabled.light == FoxyRoughColors.transparentBlack)
        #expect(provider.colorBgDefaultEnabled.dark == FoxyRoughColors.transparentWhite)
    }

    @Test func colorBgDefaultDisabled() {
        #expect(provider.colorBgDefaultDisabled.light == FoxyRoughColors.transparentBlack)
        #expect(provider.colorBgDefaultDisabled.dark == FoxyRoughColors.transparentWhite)
    }

    // MARK: - Default - Content

    @Test func colorContentDefaultEnabled() {
        #expect(provider.colorContentDefaultEnabled.light == FoxyRoughColors.bloodRed)
        #expect(provider.colorContentDefaultEnabled.dark == FoxyRoughColors.vividRed)
    }

    @Test func colorContentDefaultPressed() {
        #expect(provider.colorContentDefaultPressed.light == FoxyRoughColors.darkBloodRed)
        #expect(provider.colorContentDefaultPressed.dark == FoxyRoughColors.darkVividRed)
    }

    @Test func colorContentDefaultDisabled() {
        #expect(provider.colorContentDefaultDisabled.light == FoxyRoughColors.mutedLight)
        #expect(provider.colorContentDefaultDisabled.dark == FoxyRoughColors.mutedDark)
    }

    // MARK: - Default - Border

    @Test func colorBorderDefaultEnabled() {
        #expect(provider.colorBorderDefaultEnabled.light == FoxyRoughColors.bloodRed)
        #expect(provider.colorBorderDefaultEnabled.dark == FoxyRoughColors.vividRed)
    }

    @Test func colorBorderDefaultDisabled() {
        #expect(provider.colorBorderDefaultDisabled.light == FoxyRoughColors.mutedLight)
        #expect(provider.colorBorderDefaultDisabled.dark == FoxyRoughColors.mutedDark)
    }

    @Test func borderWidths() {
        #expect(provider.borderWidthDefault == BorderRawTokens.width25)
        #expect(provider.borderWidthDefaultInteraction == BorderRawTokens.width50)
        // Interaction (hover/pressed/focus) border must be at least as thick as the resting border
        #expect(provider.borderWidthDefault < provider.borderWidthDefaultInteraction)
    }

    // MARK: - Brand - Background

    @Test func colorBgBrandEnabled() {
        #expect(provider.colorBgBrandEnabled.light == FoxyRoughColors.bloodRed)
        #expect(provider.colorBgBrandEnabled.dark == FoxyRoughColors.vividRed)
    }

    @Test func colorBgBrandPressed() {
        #expect(provider.colorBgBrandPressed.light == FoxyRoughColors.darkBloodRed)
        #expect(provider.colorBgBrandPressed.dark == FoxyRoughColors.darkVividRed)
    }

    // MARK: - Brand - Content

    @Test func colorContentBrandEnabled() {
        #expect(provider.colorContentBrandEnabled.light == FoxyRoughColors.concreteGrey)
        #expect(provider.colorContentBrandEnabled.dark == FoxyRoughColors.black)
    }

    // MARK: - Shape

    @Test func borderRadiusRounded() {
        #expect(provider.borderRadiusRounded == BorderRawTokens.radius400)
    }

    // MARK: - Mono - Background - Strong

    @Test func monoColorBgStrongEnabled() {
        #expect(provider.monoColorBgStrongEnabled.light == FoxyRoughColors.nearBlack)
        #expect(provider.monoColorBgStrongEnabled.dark == FoxyRoughColors.softGrey)
    }

    @Test func monoColorBgStrongDisabled() {
        #expect(provider.monoColorBgStrongDisabled.light == FoxyRoughColors.mutedLight)
        #expect(provider.monoColorBgStrongDisabled.dark == FoxyRoughColors.mutedDark)
    }

    // MARK: - Mono - Foreground - Strong

    @Test func monoColorContentStrongEnabled() {
        #expect(provider.monoColorContentStrongEnabled.light == FoxyRoughColors.concreteGrey)
        #expect(provider.monoColorContentStrongEnabled.dark == FoxyRoughColors.nearBlack)
    }

    @Test func monoColorContentStrongDisabled() {
        #expect(provider.monoColorContentStrongDisabled.light == FoxyRoughColors.borderLight)
        #expect(provider.monoColorContentStrongDisabled.dark == FoxyRoughColors.mutedLight)
    }
}
