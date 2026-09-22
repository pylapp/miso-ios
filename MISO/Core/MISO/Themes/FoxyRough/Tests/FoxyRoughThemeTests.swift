// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOThemesContract
import MISOThemesMISOBlueCoat
@testable import MISOThemesMISOFoxyRough
import Testing

/// Check if the FoxyRough theme has the expected configuration and tokens providers with the expected types.
///
/// FoxyRough subclasses `BlueCoatTheme` (i.e. `DefaultTheme`) and only overrides the colors, fonts and button
/// providers, plus its own tuning and font family. All other providers (borders, sizes, spaces, other components, etc.)
/// are expected to still be BlueCoat's default ones.
///
/// - Note: Serialized on purpose. `FoxyRoughTheme.init()` calls `registerFonts()`, which mutates the shared,
///   unsynchronized `internalApplePostScriptFontNames` dictionary (see `PostScriptFontNamesMap.swift`).
///   Running several `FoxyRoughTheme()` instantiations concurrently (the default behavior of Swift Testing)
///   can corrupt that dictionary and crash the test process. Serializing this suite avoids the race in tests;
///   the underlying thread-safety issue in `FoxyRoughTheme`/`registerFont(postScript:forCombination:)` should
///   still be addressed in production code.
@Suite(.serialized)
struct FoxyRoughThemeTests {

    private var theme: FoxyRoughTheme

    init() {
        theme = FoxyRoughTheme()
    }

    // MARK: - Tests - Misc.

    @Test func themeName() throws {
        #expect(theme.name == "FoxyRough")
    }

    @Test func themeFontFamily() throws {
        #expect(theme.fontFamily == "Winky Rough")
    }

    // MARK: - Tests - Theme tuning

    @Test func tuningOfFoxyRoughTheme() {
        let tuning = theme.tuning
        #expect(tuning.hasRoundedButtons == true)
        #expect(tuning.hasRoundedTextInputs == true)
        #expect(tuning.hasRoundedAlertMessages == true)
        #expect(tuning.hasRoundedProgressIndicators == true)
        #expect(tuning.hasRoundedListItems == true)
    }

    // MARK: - Tests - Overridden providers

    @Test func colorsProviderType() {
        #expect(theme.colors is FoxyRoughColorTokensProvider)
    }

    @Test func fontsProviderType() {
        #expect(theme.fonts is FoxyRoughFontSemanticTokensProvider)
    }

    @Test func buttonProviderType() {
        #expect(theme.button is FoxyRoughButtonTokensProvider)
    }

    // MARK: - Tests - Inherited providers (not overridden by FoxyRough)

    @Test func bordersProviderIsBlueCoatDefault() {
        #expect(theme.borders is BlueCoatThemeBorderSemanticTokensProvider)
    }

    @Test func sizesProviderIsBlueCoatDefault() {
        #expect(theme.sizes is BlueCoatThemeSizeSemanticTokensProvider)
    }

    @Test func spacesProviderIsBlueCoatDefault() {
        #expect(theme.spaces is BlueCoatThemeSpaceSemanticTokensProvider)
    }

    @Test func accordionProviderIsBlueCoatDefault() {
        #expect(theme.accordion is BlueCoatThemeAccordionComponentTokensProvider)
    }

    @Test func checkboxProviderIsBlueCoatDefault() {
        #expect(theme.checkbox is BlueCoatThemeCheckboxComponentTokensProvider)
    }

    @Test func typographyProviderIsBlueCoatDefault() {
        #expect(theme.typography is BlueCoatThemeTypographyComponentTokensProvider)
    }
}
