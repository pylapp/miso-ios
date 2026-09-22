// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

@testable import MISOThemesMISOFoxyRough
import Testing

/// Checks if the FoxyRough color semantic tokens provider exposes the expected `light` / `dark` values,
/// as defined in ``FoxyRoughColors``.
struct FoxyRoughColorTokensProviderTests {

    private var provider: FoxyRoughColorTokensProvider

    init() {
        provider = FoxyRoughColorTokensProvider()
    }

    // MARK: - Background

    @Test func bgPrimary() {
        #expect(provider.bgPrimary.light == FoxyRoughColors.concreteGrey)
        #expect(provider.bgPrimary.dark == FoxyRoughColors.nearBlack)
    }

    @Test func bgSecondary() {
        #expect(provider.bgSecondary.light == FoxyRoughColors.softGrey)
        #expect(provider.bgSecondary.dark == FoxyRoughColors.deepGrey)
    }

    // MARK: - Surface

    @Test func surfaceStatusAccentEmphasized() {
        #expect(provider.surfaceStatusAccentEmphasized.light == FoxyRoughColors.bloodRed)
        #expect(provider.surfaceStatusAccentEmphasized.dark == FoxyRoughColors.vividRed)
    }

    @Test func surfaceBrandPrimary() {
        #expect(provider.surfaceBrandPrimary.light == FoxyRoughColors.bloodRed)
        #expect(provider.surfaceBrandPrimary.dark == FoxyRoughColors.vividRed)
    }

    // MARK: - Content

    @Test func contentDefault() {
        #expect(provider.contentDefault.light == FoxyRoughColors.nearBlack)
        #expect(provider.contentDefault.dark == FoxyRoughColors.concreteGrey)
    }

    @Test func contentMuted() {
        #expect(provider.contentMuted.light == FoxyRoughColors.mutedLight)
        #expect(provider.contentMuted.dark == FoxyRoughColors.mutedDark)
    }

    @Test func contentBrandPrimary() {
        #expect(provider.contentBrandPrimary.light == FoxyRoughColors.bloodRed)
        #expect(provider.contentBrandPrimary.dark == FoxyRoughColors.vividRed)
    }

    @Test func contentStatusAccent() {
        #expect(provider.contentStatusAccent.light == FoxyRoughColors.bloodRed)
        #expect(provider.contentStatusAccent.dark == FoxyRoughColors.vividRed)
    }

    @Test func contentOnStatusAccentEmphasized() {
        #expect(provider.contentOnStatusAccentEmphasized.light == FoxyRoughColors.concreteGrey)
        #expect(provider.contentOnStatusAccentEmphasized.dark == FoxyRoughColors.black)
    }

    @Test func contentOnBrandPrimary() {
        #expect(provider.contentOnBrandPrimary.light == FoxyRoughColors.concreteGrey)
        #expect(provider.contentOnBrandPrimary.dark == FoxyRoughColors.black)
    }

    // MARK: - Action

    @Test func actionEnabled() {
        #expect(provider.actionEnabled.light == FoxyRoughColors.bloodRed)
        #expect(provider.actionEnabled.dark == FoxyRoughColors.vividRed)
    }

    @Test func actionPressed() {
        #expect(provider.actionPressed.light == FoxyRoughColors.darkBloodRed)
        #expect(provider.actionPressed.dark == FoxyRoughColors.darkVividRed)
    }

    @Test func actionFocus() {
        #expect(provider.actionFocus.light == FoxyRoughColors.bloodRed)
        #expect(provider.actionFocus.dark == FoxyRoughColors.vividRed)
    }

    @Test func actionLoading() {
        #expect(provider.actionLoading.light == FoxyRoughColors.bloodRed)
        #expect(provider.actionLoading.dark == FoxyRoughColors.vividRed)
    }

    @Test func actionSelected() {
        #expect(provider.actionSelected.light == FoxyRoughColors.bloodRed)
        #expect(provider.actionSelected.dark == FoxyRoughColors.vividRed)
    }

    // MARK: - Border

    @Test func borderDefault() {
        #expect(provider.borderDefault.light == FoxyRoughColors.borderLight)
        #expect(provider.borderDefault.dark == FoxyRoughColors.borderDark)
    }

    @Test func borderBrandPrimary() {
        #expect(provider.borderBrandPrimary.light == FoxyRoughColors.bloodRed)
        #expect(provider.borderBrandPrimary.dark == FoxyRoughColors.vividRed)
    }
}
