// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOFoundations
import MISOThemesContract

/// A class which wraps all **component  tokens of bar**.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllBarComponentTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users.
/// It implements also the protocol `BarComponentTokens` so as to expose the component tokens for *bar* through any `MISOTheme`.
/// *Bar* components tokens are defined with semantic tokens of colors (`AllColorSemanticTokensProviders`),
/// sizes (from `AllSizeSemanticTokensProvider`), borders (from `AllBorderSemanticTokensProvider`)
/// and effects (from `AllEffectSemanticTokensProvider`).
///
/// - Since: 1.0.0
open class BlueCoatThemeBarComponentTokensProvider: AllBarComponentTokensProvider {

    /// Provider of sizes semantic tokens to use for bar sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of borders semantic tokens to use for bar borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of colors semantic tokens to use for bar colors
    let colors: AllColorSemanticTokensProvider

    /// Provider of opacities semantic tokens to use for bar opacities
    let opacities: AllOpacitySemanticTokensProvider

    /// Provider of effects semantic tokens to use for bar effects
    let effects: AllEffectSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to bars components
    ///
    /// - Parameters:
    ///    - sizes: Provider for sizes semantic tokens, if nil, a default one will be used (``BlueCoatThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for borders semantic tokens, if nil, a default one will be used (``BlueCoatThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for colors semantic tokens, if nil, a default one will be used (``BlueCoatThemeColorSemanticTokensProvider``)
    ///    - opacities: Provider for opacities semantic tokens, if nil, a default one will be used (``BlueCoatThemeOpacitySemanticTokensProvider``)
    ///    - effects: Provider for effects semantic tokens, if nil, a default one will be used (``BlueCoatThemeEffectSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                opacities: AllOpacitySemanticTokensProvider? = nil,
                effects: AllEffectSemanticTokensProvider? = nil)
    {
        ML.debug("Init of BlueCoatBarComponentTokensProvider")
        self.sizes = (sizes ?? BlueCoatThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? BlueCoatThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? BlueCoatThemeColorSemanticTokensProvider())
        self.opacities = (opacities ?? BlueCoatThemeOpacitySemanticTokensProvider())
        self.effects = (effects ?? BlueCoatThemeEffectSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatBarComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of BarComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+BarComponentTokens.swift
    // This declaration of BlueCoatThemeBarComponentTokensProvider is here also to allow to write documentation.
}
