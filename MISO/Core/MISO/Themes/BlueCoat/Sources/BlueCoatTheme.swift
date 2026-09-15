// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOThemesContract
import MISOTokensSemantic
import SwiftUI

// swiftlint:disable function_body_length
// swiftlint:disable line_length

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultTheme = BlueCoatTheme

/// This BlueCoat theme is a theme for some specific usages, like for prototyping and design of journeys without any brand-charted theme.
/// This is an override of the default basic `MISOTheme` for some usages.
/// It can override any properties from its superclass, and but cannot be derived ; this is not allowed.
///
/// To get it:
/// ```swift
///     @Environment(\.theme) var theme
/// ```
///
/// ## Integration
///
/// To use this theme, inject it to your view using `MISOThemeableView` and get it through environment variable.
///
/// ```swift
///     @main
///     struct YourApp: App {
///         var body: some Scene {
///             WindowGroup {
///                 MISOThemeableView(theme: BlueCoatTheme()) {
///                     // Your root view
///                 }
///             }
///         }
///     }
/// ```
///
/// # Theme tuning
///
/// This theme cannot be customized more.
///
/// ## Tokens versions
///
/// - Core MISO version: 1.11.0
/// - Core BlueCoat version: 1.5.0
/// - Brand BlueCoat version: 2.7.0
///
/// - Since: OUDS 0.17.0
open class BlueCoatTheme: MISOTheme, @unchecked Sendable {

    /// The theme name ("BlueCoat")
    public static let name = "BlueCoat"

    /// Flag to avoid to register severals the fonts making some errors happen
    nonisolated(unsafe) private static var fontsAlreadyRegistered: Bool = false

    // MARK: - Initializers

    /// Constructor of the Orange theme.
    /// It needs several tokens providers for semantic tokens and component tokens.
    /// If a nil token provider is given, the default version associated fo the theme is used.
    ///
    /// - Parameters:
    ///    - borders: All semantic tokens of borders
    ///    - colors: All semantic tokens of colors
    ///    - colorModes: All semantic tokens of color modes
    ///    - colorsCharts: All semantic tokens of color charts
    ///    - colorsDecorative: All semantic tokens of color decorative
    ///    - effects: All semantic tokens of effects
    ///    - elevations: All semantic tokens of elevations
    ///    - fonts: All semantic tokens of fonts
    ///    - grids: All semantic tokens of grids
    ///    - opacities: All semantic tokens of opacity
    ///    - dimensions: All semantic tokens of dimensions
    ///    - sizes: All semantic tokens of sizes
    ///    - spaces: All semantic tokens of spaces
    ///    - accordion: All component tokens for accordion
    ///    - alert: All component tokens for alert
    ///    - alertMessage: All component tokens for alert message
    ///    - badge: All component tokens for badge
    ///    - bar: All component tokens for bar
    ///    - bulletList: All component tokens for bullet list
    ///    - button: All component tokens for button
    ///    - categoricalTag: All components tokens for categorical tag
    ///    - checkbox: All component tokens for checkbox
    ///    - chip: All component tokens for chip
    ///    - divider: All component tokens for divider
    ///    - icon: All component tokens for icon
    ///    - link: All component tokens for link
    ///    - listItem: All component tokens for list item
    ///    - pinCodeInput: All component tokens for pin code input
    ///    - progressIndicator: All component tokens for progress indicator
    ///    - quantityInput: All component tokens for quantity input
    ///    - radioButton: All component tokens for radio buttons
    ///    - selectInput: All component tokens for select input
    ///    - skeleton: All component tokens for skeleton
    ///    - switch: All component tokens for switch
    ///    - tag: All component tokens for tag
    ///    - inputTag: All component tokens for input tag
    ///    - textArea: All component tokens for text area
    ///    - textInput: All component tokens for text input
    ///    - toast: All component tokens for toast
    ///    - typography: All component tokens for typography
    ///    - resourcesBundle: The `Bundle` of the module containing assets to load like images
    ///    - name: A name to give for debug purposes to the theme, default set to "Orange"
    ///    - fontFamily: Set `nil` if system font to use, otherwise use the `FontFamilySemanticToken` you want to apply.
    ///    - tuning: A set of configurations to tune a theme, by default `Tuning.default`
    override public init(borders: AllBorderSemanticTokensProvider? = nil,
                         colors: AllColorSemanticTokensProvider? = nil,
                         colorModes: AllColorModeSemanticTokensProvider? = nil,
                         colorsCharts: AllColorChartSemanticTokensProvider? = nil,
                         colorsDecorative: AllColorDecorativeSemanticTokensProvider? = nil,
                         effects: AllEffectSemanticTokensProvider? = nil,
                         elevations: AllElevationSemanticTokensProvider? = nil,
                         fonts: AllFontSemanticTokensProvider? = nil,
                         grids: AllGridSemanticTokensProvider? = nil,
                         opacities: AllOpacitySemanticTokensProvider? = nil,
                         dimensions: AllDimensionSemanticTokensProvider? = nil,
                         sizes: AllSizeSemanticTokensProvider? = nil,
                         spaces: AllSpaceSemanticTokensProvider? = nil,
                         accordion: AllAccordionComponentTokensProvider? = nil,
                         alert: AllAlertComponentTokensProvider? = nil,
                         alertMessage: AllAlertMessageComponentTokensProvider? = nil,
                         badge: AllBadgeComponentTokensProvider? = nil,
                         bar: AllBarComponentTokensProvider? = nil,
                         bulletList: AllBulletListComponentTokensProvider? = nil,
                         button: AllButtonComponentTokensProvider? = nil,
                         categoricalTag: AllCategoricalTagComponentTokensProvider? = nil,
                         checkbox: AllCheckboxComponentTokensProvider? = nil,
                         chip: AllChipComponentTokensProvider? = nil,
                         divider: AllDividerComponentTokensProvider? = nil,
                         icon: AllIconComponentTokensProvider? = nil,
                         link: AllLinkComponentTokensProvider? = nil,
                         listItem: AllListItemComponentTokensProvider? = nil,
                         pinCodeInput: AllPinCodeInputComponentTokensProvider? = nil,
                         progressIndicator: AllProgressIndicatorComponentTokensProvider? = nil,
                         quantityInput: AllQuantityInputComponentTokensProvider? = nil,
                         radioButton: AllRadioButtonComponentTokensProvider? = nil,
                         selectInput: AllSelectInputComponentTokensProvider? = nil,
                         skeleton: AllSkeletonComponentTokensProvider? = nil,
                         switch: AllSwitchComponentTokensProvider? = nil,
                         tag: AllTagComponentTokensProvider? = nil,
                         inputTag: AllInputTagComponentTokensProvider? = nil,
                         textArea: AllTextAreaComponentTokensProvider? = nil,
                         textInput: AllTextInputComponentTokensProvider? = nil,
                         toast: AllToastComponentTokensProvider? = nil,
                         typography: AllTypographyComponentTokensProvider? = nil,
                         resourcesBundle: Bundle = Bundle.BlueCoatTheme,
                         name: String = BlueCoatTheme.name,
                         fontFamily: FontFamilySemanticToken? = nil,
                         tuning: Tuning = Tuning.default)
    {

        let borders = (borders ?? BlueCoatThemeBorderSemanticTokensProvider())
        let colors = (colors ?? BlueCoatThemeColorSemanticTokensProvider())
        let colorModes = (colorModes ?? BlueCoatThemeColorModeSemanticTokensProvider(colors: colors))
        let effects = (effects ?? BlueCoatThemeEffectSemanticTokensProvider())
        let elevations = (elevations ?? BlueCoatThemeElevationSemanticTokensProvider())
        let fonts = (fonts ?? BlueCoatThemeFontSemanticTokensProvider())
        let grids = (grids ?? BlueCoatThemeGridSemanticTokensProvider())
        let opacities = (opacities ?? BlueCoatThemeOpacitySemanticTokensProvider())
        let dimensions = (dimensions ?? BlueCoatThemeDimensionSemanticTokensProvider())
        let sizes = (sizes ?? BlueCoatThemeSizeSemanticTokensProvider(dimensions: dimensions))
        let spaces = (spaces ?? BlueCoatThemeSpaceSemanticTokensProvider(dimensions: dimensions))

        let accordion = (accordion ?? BlueCoatThemeAccordionComponentTokensProvider(sizes: sizes, spaces: spaces))
        let alert = (alert ?? BlueCoatThemeAlertComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces))
        let alertMessage = (alertMessage ?? BlueCoatThemeAlertMessageComponentTokensProvider(borders: borders, spaces: spaces))
        let badge = (badge ?? BlueCoatThemeBadgeComponentTokensProvider(spaces: spaces, dimensions: dimensions))
        let bar = (bar ?? BlueCoatThemeBarComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, opacities: opacities, effects: effects))
        let button = (button ?? BlueCoatThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces))
        let bulletList = (bulletList ?? BlueCoatThemeBulletListComponentTokensProvider(spaces: spaces))
        let categoricalTag = (categoricalTag ?? BlueCoatThemeCategoricalTagComponentTokensProvider(colors: colors))
        let checkbox = (checkbox ?? BlueCoatThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders))
        let chip = (chip ?? BlueCoatThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions))
        let divider = (divider ?? BlueCoatThemeDividerComponentTokensProvider(borders: borders))
        let icon = (icon ?? BlueCoatThemeIconComponentTokensProvider(colors: colors))
        let link = (link ?? BlueCoatThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces, dimensions: dimensions))
        let listItem = (listItem ?? BlueCoatThemeListItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions))
        let pinCodeInput = (pinCodeInput ?? BlueCoatThemePinCodeInputComponentTokensProvider(spaces: spaces, dimensions: dimensions))
        let progressIndicator = (progressIndicator ?? BlueCoatThemeProgressIndicatorComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions))
        let quantityInput = (quantityInput ?? BlueCoatThemeQuantityInputComponentTokensProvider(sizes: sizes, spaces: spaces))
        let radioButton = (radioButton ?? BlueCoatThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders))
        let selectInput = (selectInput ?? BlueCoatThemeSelectInputComponentTokensProvider(dimensions: dimensions))
        let skeleton = (skeleton ?? BlueCoatThemeSkeletonComponentTokensProvider(colors: colors))
        let `switch` = (`switch` ?? BlueCoatThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions))
        let tag = (tag ?? BlueCoatThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions))
        let inputTag = (inputTag ?? BlueCoatThemeInputTagComponentTokensProvider(borders: borders, colors: colors))
        let textArea = (textArea ?? BlueCoatThemeTextAreaComponentTokensProvider(sizes: sizes, spaces: spaces))
        let textInput = (textInput ?? BlueCoatThemeTextInputComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions))
        let toast = (toast ?? BlueCoatThemeToastComponentTokensProvider(borders: borders, dimensions: dimensions, sizes: sizes))
        let typography = (typography ?? BlueCoatThemeTypographyComponentTokensProvider(spaces: spaces))

        super.init(borders: borders,
                   colors: colors,
                   colorModes: colorModes,
                   colorsCharts: nil,
                   colorsDecorative: nil,
                   effects: effects,
                   elevations: elevations,
                   fonts: fonts,
                   grids: grids,
                   opacities: opacities,
                   dimensions: dimensions,
                   sizes: sizes,
                   spaces: spaces,
                   accordion: accordion,
                   alert: alert,
                   alertMessage: alertMessage,
                   badge: badge,
                   bar: bar,
                   bulletList: bulletList,
                   button: button,
                   categoricalTag: categoricalTag,
                   checkbox: checkbox,
                   chip: chip,
                   divider: divider,
                   icon: icon,
                   link: link,
                   listItem: listItem,
                   pinCodeInput: pinCodeInput,
                   progressIndicator: progressIndicator,
                   quantityInput: quantityInput,
                   radioButton: radioButton,
                   selectInput: selectInput,
                   skeleton: skeleton,
                   switch: `switch`,
                   tag: tag,
                   inputTag: inputTag,
                   textArea: textArea,
                   textInput: textInput,
                   toast: toast,
                   typography: typography,
                   resourcesBundle: resourcesBundle,
                   name: name,
                   fontFamily: fontFamily,
                   tuning: tuning)
    }

    /// Constructor of the `BlueCoat` theme with its own providers of tokens.
    public init() {
        let borders = BlueCoatThemeBorderSemanticTokensProvider()
        let colors = BlueCoatThemeColorSemanticTokensProvider()
        let colorModes = BlueCoatThemeColorModeSemanticTokensProvider(colors: colors)
        let effects = BlueCoatThemeEffectSemanticTokensProvider()
        let elevations = BlueCoatThemeElevationSemanticTokensProvider()
        let fonts = BlueCoatThemeFontSemanticTokensProvider()
        let grids = BlueCoatThemeGridSemanticTokensProvider()
        let opacities = BlueCoatThemeOpacitySemanticTokensProvider()
        let dimensions = BlueCoatThemeDimensionSemanticTokensProvider()
        let sizes = BlueCoatThemeSizeSemanticTokensProvider(dimensions: dimensions)
        let spaces = BlueCoatThemeSpaceSemanticTokensProvider(dimensions: dimensions)

        let accordion = BlueCoatThemeAccordionComponentTokensProvider(sizes: sizes, spaces: spaces)
        let alert = BlueCoatThemeAlertComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces)
        let alertMessage = BlueCoatThemeAlertMessageComponentTokensProvider(borders: borders, spaces: spaces)
        let badge = BlueCoatThemeBadgeComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let bar = BlueCoatThemeBarComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, opacities: opacities, effects: effects)
        let button = BlueCoatThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let bulletList = BlueCoatThemeBulletListComponentTokensProvider(spaces: spaces)
        let categoricalTag = BlueCoatThemeCategoricalTagComponentTokensProvider(colors: colors)
        let checkbox = BlueCoatThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders)
        let chip = BlueCoatThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let divider = BlueCoatThemeDividerComponentTokensProvider(borders: borders)
        let icon = BlueCoatThemeIconComponentTokensProvider(colors: colors)
        let link = BlueCoatThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces, dimensions: dimensions)
        let listItem = BlueCoatThemeListItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let pinCodeInput = BlueCoatThemePinCodeInputComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let progressIndicator = BlueCoatThemeProgressIndicatorComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let quantityInput = BlueCoatThemeQuantityInputComponentTokensProvider(sizes: sizes, spaces: spaces)
        let radioButton = BlueCoatThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders)
        let selectInput = BlueCoatThemeSelectInputComponentTokensProvider(dimensions: dimensions)
        let skeleton = BlueCoatThemeSkeletonComponentTokensProvider(colors: colors)
        let `switch` = BlueCoatThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions)
        let tag = BlueCoatThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions)
        let inputTag = BlueCoatThemeInputTagComponentTokensProvider(borders: borders, colors: colors)
        let textArea = BlueCoatThemeTextAreaComponentTokensProvider(sizes: sizes, spaces: spaces)
        let textInput = BlueCoatThemeTextInputComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let toast = BlueCoatThemeToastComponentTokensProvider(borders: borders, dimensions: dimensions, sizes: sizes)
        let typography = BlueCoatThemeTypographyComponentTokensProvider(spaces: spaces)

        super.init(borders: borders,
                   colors: colors,
                   colorModes: colorModes,
                   effects: effects,
                   elevations: elevations,
                   fonts: fonts,
                   grids: grids,
                   opacities: opacities,
                   dimensions: dimensions,
                   sizes: sizes,
                   spaces: spaces,
                   accordion: accordion,
                   alert: alert,
                   alertMessage: alertMessage,
                   badge: badge,
                   bar: bar,
                   bulletList: bulletList,
                   button: button,
                   categoricalTag: categoricalTag,
                   checkbox: checkbox,
                   chip: chip,
                   divider: divider,
                   icon: icon,
                   link: link,
                   listItem: listItem,
                   pinCodeInput: pinCodeInput,
                   progressIndicator: progressIndicator,
                   quantityInput: quantityInput,
                   radioButton: radioButton,
                   selectInput: selectInput,
                   skeleton: skeleton,
                   switch: `switch`,
                   tag: tag,
                   inputTag: inputTag,
                   textArea: textArea,
                   textInput: textInput,
                   toast: toast,
                   typography: typography,
                   resourcesBundle: Bundle.BlueCoatTheme,
                   name: Self.name,
                   fontFamily: BlueCoatBrandFontRawTokens.familyDefault,
                   tuning: Tuning.BlueCoat)

        registerFonts()
    }

    deinit {}

    /// Fonts are defined in Resources/Fonts in TTF files
    private func registerFonts() {
        if !BlueCoatTheme.fontsAlreadyRegistered {
            let fonts = Bundle.BlueCoatTheme.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
            fonts?.forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }
            BlueCoatTheme.fontsAlreadyRegistered = true
        }
    }
}

// MARK: - Predefined tunings

extension Tuning {

    /// The theme tuning for *BlueCoat* contains **square corners for buttons**,
    /// **square corners for text / PIN code / password / text area inputs** and **list items**;
    /// and **rounded corners for alert messages** and **progress indicators**.
    public static let BlueCoat = Tuning(hasRoundedButtons: false,
                                        hasRoundedTextInputs: false,
                                        hasRoundedAlertMessages: true,
                                        hasRoundedProgressIndicators: true,
                                        hasRoundedListItems: false)
}

// swiftlint:enable function_body_length
// swiftlint:enable line_length
