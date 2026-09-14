// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne
// SPDX-License-Identifier: MIT

import Foundation
import MISOThemesContract
import MISOTokensSemantic
import SwiftUI

// swiftlint:disable function_body_length
// swiftlint:disable line_length

/// This Wireframe theme is a theme for some specific usages, like for prototyping and design of journeys without any brand-charted theme.
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
///                 MISOThemeableView(theme: WireframeTheme()) {
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
/// - Core Wireframe version: 1.5.0
/// - Brand Wireframe version: 2.7.0
///
/// - Since: OUDS 0.17.0
open class WireframeTheme: MISOTheme, @unchecked Sendable {

    /// The theme name ("Wireframe")
    public static let name = "Wireframe"

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
                         resourcesBundle: Bundle = Bundle.WireframeTheme,
                         name: String = WireframeTheme.name,
                         fontFamily: FontFamilySemanticToken? = nil,
                         tuning: Tuning = Tuning.default)
    {

        let borders = (borders ?? WireframeThemeBorderSemanticTokensProvider())
        let colors = (colors ?? WireframeThemeColorSemanticTokensProvider())
        let colorModes = (colorModes ?? WireframeThemeColorModeSemanticTokensProvider(colors: colors))
        let effects = (effects ?? WireframeThemeEffectSemanticTokensProvider())
        let elevations = (elevations ?? WireframeThemeElevationSemanticTokensProvider())
        let fonts = (fonts ?? WireframeThemeFontSemanticTokensProvider())
        let grids = (grids ?? WireframeThemeGridSemanticTokensProvider())
        let opacities = (opacities ?? WireframeThemeOpacitySemanticTokensProvider())
        let dimensions = (dimensions ?? WireframeThemeDimensionSemanticTokensProvider())
        let sizes = (sizes ?? WireframeThemeSizeSemanticTokensProvider(dimensions: dimensions))
        let spaces = (spaces ?? WireframeThemeSpaceSemanticTokensProvider(dimensions: dimensions))

        let accordion = (accordion ?? WireframeThemeAccordionComponentTokensProvider(sizes: sizes, spaces: spaces))
        let alert = (alert ?? WireframeThemeAlertComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces))
        let alertMessage = (alertMessage ?? WireframeThemeAlertMessageComponentTokensProvider(borders: borders, spaces: spaces))
        let badge = (badge ?? WireframeThemeBadgeComponentTokensProvider(spaces: spaces, dimensions: dimensions))
        let bar = (bar ?? WireframeThemeBarComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, opacities: opacities, effects: effects))
        let button = (button ?? WireframeThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces))
        let bulletList = (bulletList ?? WireframeThemeBulletListComponentTokensProvider(spaces: spaces))
        let categoricalTag = (categoricalTag ?? WireframeThemeCategoricalTagComponentTokensProvider(colors: colors))
        let checkbox = (checkbox ?? WireframeThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders))
        let chip = (chip ?? WireframeThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions))
        let divider = (divider ?? WireframeThemeDividerComponentTokensProvider(borders: borders))
        let icon = (icon ?? WireframeThemeIconComponentTokensProvider(colors: colors))
        let link = (link ?? WireframeThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces, dimensions: dimensions))
        let listItem = (listItem ?? WireframeThemeListItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions))
        let pinCodeInput = (pinCodeInput ?? WireframeThemePinCodeInputComponentTokensProvider(spaces: spaces, dimensions: dimensions))
        let progressIndicator = (progressIndicator ?? WireframeThemeProgressIndicatorComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions))
        let quantityInput = (quantityInput ?? WireframeThemeQuantityInputComponentTokensProvider(sizes: sizes, spaces: spaces))
        let radioButton = (radioButton ?? WireframeThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders))
        let selectInput = (selectInput ?? WireframeThemeSelectInputComponentTokensProvider(dimensions: dimensions))
        let skeleton = (skeleton ?? WireframeThemeSkeletonComponentTokensProvider(colors: colors))
        let `switch` = (`switch` ?? WireframeThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions))
        let tag = (tag ?? WireframeThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions))
        let inputTag = (inputTag ?? WireframeThemeInputTagComponentTokensProvider(borders: borders, colors: colors))
        let textArea = (textArea ?? WireframeThemeTextAreaComponentTokensProvider(sizes: sizes, spaces: spaces))
        let textInput = (textInput ?? WireframeThemeTextInputComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions))
        let toast = (toast ?? WireframeThemeToastComponentTokensProvider(borders: borders, dimensions: dimensions, sizes: sizes))
        let typography = (typography ?? WireframeThemeTypographyComponentTokensProvider(spaces: spaces))

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

    /// Constructor of the `Wireframe` theme with its own providers of tokens.
    public init() {
        let borders = WireframeThemeBorderSemanticTokensProvider()
        let colors = WireframeThemeColorSemanticTokensProvider()
        let colorModes = WireframeThemeColorModeSemanticTokensProvider(colors: colors)
        let effects = WireframeThemeEffectSemanticTokensProvider()
        let elevations = WireframeThemeElevationSemanticTokensProvider()
        let fonts = WireframeThemeFontSemanticTokensProvider()
        let grids = WireframeThemeGridSemanticTokensProvider()
        let opacities = WireframeThemeOpacitySemanticTokensProvider()
        let dimensions = WireframeThemeDimensionSemanticTokensProvider()
        let sizes = WireframeThemeSizeSemanticTokensProvider(dimensions: dimensions)
        let spaces = WireframeThemeSpaceSemanticTokensProvider(dimensions: dimensions)

        let accordion = WireframeThemeAccordionComponentTokensProvider(sizes: sizes, spaces: spaces)
        let alert = WireframeThemeAlertComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces)
        let alertMessage = WireframeThemeAlertMessageComponentTokensProvider(borders: borders, spaces: spaces)
        let badge = WireframeThemeBadgeComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let bar = WireframeThemeBarComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, opacities: opacities, effects: effects)
        let button = WireframeThemeButtonComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
        let bulletList = WireframeThemeBulletListComponentTokensProvider(spaces: spaces)
        let categoricalTag = WireframeThemeCategoricalTagComponentTokensProvider(colors: colors)
        let checkbox = WireframeThemeCheckboxComponentTokensProvider(sizes: sizes, borders: borders)
        let chip = WireframeThemeChipComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let divider = WireframeThemeDividerComponentTokensProvider(borders: borders)
        let icon = WireframeThemeIconComponentTokensProvider(colors: colors)
        let link = WireframeThemeLinkComponentTokensProvider(sizes: sizes, colors: colors, spaces: spaces, dimensions: dimensions)
        let listItem = WireframeThemeListItemComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let pinCodeInput = WireframeThemePinCodeInputComponentTokensProvider(spaces: spaces, dimensions: dimensions)
        let progressIndicator = WireframeThemeProgressIndicatorComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let quantityInput = WireframeThemeQuantityInputComponentTokensProvider(sizes: sizes, spaces: spaces)
        let radioButton = WireframeThemeRadioButtonComponentTokensProvider(sizes: sizes, borders: borders)
        let selectInput = WireframeThemeSelectInputComponentTokensProvider(dimensions: dimensions)
        let skeleton = WireframeThemeSkeletonComponentTokensProvider(colors: colors)
        let `switch` = WireframeThemeSwitchComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions)
        let tag = WireframeThemeTagComponentTokensProvider(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions)
        let inputTag = WireframeThemeInputTagComponentTokensProvider(borders: borders, colors: colors)
        let textArea = WireframeThemeTextAreaComponentTokensProvider(sizes: sizes, spaces: spaces)
        let textInput = WireframeThemeTextInputComponentTokensProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
        let toast = WireframeThemeToastComponentTokensProvider(borders: borders, dimensions: dimensions, sizes: sizes)
        let typography = WireframeThemeTypographyComponentTokensProvider(spaces: spaces)

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
                   resourcesBundle: Bundle.WireframeTheme,
                   name: Self.name,
                   fontFamily: WireframeBrandFontRawTokens.familyDefault,
                   tuning: Tuning.Wireframe)

        registerFonts()
    }

    deinit {}

    /// Fonts are defined in Resources/Fonts in TTF files
    private func registerFonts() {
        if !WireframeTheme.fontsAlreadyRegistered {
            let fonts = Bundle.WireframeTheme.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
            fonts?.forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }
            WireframeTheme.fontsAlreadyRegistered = true
        }
    }
}

// MARK: - Predefined tunings

extension Tuning {

    /// The theme tuning for *Wireframe* contains **square corners for buttons**,
    /// **square corners for text / PIN code / password / text area inputs** and **list items**;
    /// and **rounded corners for alert messages** and **progress indicators**.
    public static let Wireframe = Tuning(hasRoundedButtons: false,
                                         hasRoundedTextInputs: false,
                                         hasRoundedAlertMessages: true,
                                         hasRoundedProgressIndicators: true,
                                         hasRoundedListItems: false)
}

// swiftlint:enable function_body_length
// swiftlint:enable line_length
