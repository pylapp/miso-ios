// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOThemesContract
@testable import MISOThemesMISOBlueCoat
import Testing

/// Check if the theme has the default configuration and tokens providers with the expected types.
struct BlueCoatThemeTests {

    private var theme: BlueCoatTheme

    init() {
        theme = BlueCoatTheme()
    }

    // MARK: - Tests - Misc.

    @Test func themeName() throws {
        #expect(theme.name == "BlueCoat")
    }

    // MARK: - Tests - Theme tuning

    @Test func defaultTuningOfBlueCoatTheme() {
        let tuning = theme.tuning
        #expect(tuning.hasRoundedButtons == false)
        #expect(tuning.hasRoundedTextInputs == false)
        #expect(tuning.hasRoundedAlertMessages == true)
        #expect(tuning.hasRoundedListItems == false)
    }

    // MARK: - Tests - Semantic tokens providers

    @Test func defaultBorderSemanticTokensProvider() {
        #expect(theme.borders is BlueCoatThemeBorderSemanticTokensProvider)
    }

    @Test func defaultColorSemanticTokensProvider() {
        #expect(theme.colors is BlueCoatThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorModeSemanticTokensProvider() throws {
        #expect(theme.colorModes is BlueCoatThemeColorModeSemanticTokensProvider)
        #expect(try #require((theme.colorModes as? BlueCoatThemeColorModeSemanticTokensProvider)?.colors) is BlueCoatThemeColorSemanticTokensProvider)
    }

    @Test func defaultColorChartsSemanticTokensProvider() {
        #expect(theme.colorsCharts == nil)
    }

    @Test func defaultColorDecorativeSemanticTokensProvider() {
        #expect(theme.colorsDecorative == nil)
    }

    @Test func defaultEffectSemanticTokensProvider() {
        #expect(theme.effects is BlueCoatThemeEffectSemanticTokensProvider)
    }

    @Test func defaultElevationSemanticTokensProvider() {
        #expect(theme.elevations is BlueCoatThemeElevationSemanticTokensProvider)
    }

    @Test func defaultFontSemanticTokensProvider() {
        #expect(theme.fonts is BlueCoatThemeFontSemanticTokensProvider)
    }

    @Test func defaultGridSemanticTokensProvider() {
        #expect(theme.grids is BlueCoatThemeGridSemanticTokensProvider)
    }

    @Test func defaultOpacitySemanticTokensProvider() {
        #expect(theme.opacities is BlueCoatThemeOpacitySemanticTokensProvider)
    }

    @Test func defaultDimensionSemanticTokensProvider() {
        #expect(theme.dimensions is BlueCoatThemeDimensionSemanticTokensProvider)
    }

    @Test func defaultSizeSemanticTokensProvider() {
        #expect(theme.sizes is BlueCoatThemeSizeSemanticTokensProvider)
    }

    @Test func defaultSpaceSemanticTokensProvider() {
        #expect(theme.spaces is BlueCoatThemeSpaceSemanticTokensProvider)
    }

    // MARK: - Tests - Component tokens providers

    @Test func defaultAccordionComponentTokensProvider() throws {
        #expect(theme.accordion is BlueCoatThemeAccordionComponentTokensProvider)
    }

    @Test func defaultAlertComponentTokensProvider() {
        #expect(theme.alert is BlueCoatThemeAlertComponentTokensProvider)
    }

    @Test func defaultBadgeComponentTokensProvider() {
        #expect(theme.badge is BlueCoatThemeBadgeComponentTokensProvider)
    }

    @Test func defaultBarComponentTokensProvider() {
        #expect(theme.bar is BlueCoatThemeBarComponentTokensProvider)
    }

    @Test func defaultBulletListComponentTokensProvider() {
        #expect(theme.bulletList is BlueCoatThemeBulletListComponentTokensProvider)
    }

    @Test func defaultButtonComponentTokensProvider() {
        #expect(theme.button is BlueCoatThemeButtonComponentTokensProvider)
    }

    @Test func defaultCheckboxComponentTokensProvider() {
        #expect(theme.checkbox is BlueCoatThemeCheckboxComponentTokensProvider)
    }

    @Test func defaultChipComponentTokensProvider() {
        #expect(theme.chip is BlueCoatThemeChipComponentTokensProvider)
    }

    @Test func defaultDividerComponentTokensProvider() {
        #expect(theme.divider is BlueCoatThemeDividerComponentTokensProvider)
    }

    @Test func defaultListItemComponentTokensProvider() {
        #expect(theme.listItem is BlueCoatThemeListItemComponentTokensProvider)
    }

    @Test func defaultIconComponentTokensProvider() {
        #expect(theme.icon is BlueCoatThemeIconComponentTokensProvider)
    }

    @Test func defaultLinkComponentTokensProvider() {
        #expect(theme.link is BlueCoatThemeLinkComponentTokensProvider)
    }

    @Test func defaultPinCodeInputComponentTokensProvider() {
        #expect(theme.pinCodeInput is BlueCoatThemePinCodeInputComponentTokensProvider)
    }

    @Test func defaultProgressIndicatorComponentTokensProvider() {
        #expect(theme.progressIndicator is BlueCoatThemeProgressIndicatorComponentTokensProvider)
    }

    @Test func defaultQuantityInputComponentTokensProvider() {
        #expect(theme.quantityInput is BlueCoatThemeQuantityInputComponentTokensProvider)
    }

    @Test func defaultRadioButtonComponentTokensProvider() {
        #expect(theme.radioButton is BlueCoatThemeRadioButtonComponentTokensProvider)
    }

    @Test func defaultSelectInputComponentTokensProvider() {
        #expect(theme.selectInput is BlueCoatThemeSelectInputComponentTokensProvider)
    }

    @Test func defaultSkeletonComponentTokensProvider() {
        #expect(theme.skeleton is BlueCoatThemeSkeletonComponentTokensProvider)
    }

    @Test func defaultSwitchComponentTokensProvider() {
        #expect(theme.switch is BlueCoatThemeSwitchComponentTokensProvider)
    }

    @Test func defaultTagComponentTokensProvider() {
        #expect(theme.tag is BlueCoatThemeTagComponentTokensProvider)
    }

    @Test func defaultInputTagComponentTokensProvider() {
        #expect(theme.inputTag is BlueCoatThemeInputTagComponentTokensProvider)
    }

    @Test func defaultTextAreaButtonComponentTokensProvider() {
        #expect(theme.textArea is BlueCoatThemeTextAreaComponentTokensProvider)
    }

    @Test func defaultTextInputComponentTokensProvider() {
        #expect(theme.textInput is BlueCoatThemeTextInputComponentTokensProvider)
    }

    @Test func defaultTypographyComponentTokensProvider() throws {
        #expect(theme.typography is BlueCoatThemeTypographyComponentTokensProvider)
    }
}
