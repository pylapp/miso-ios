// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// A class which wraps all **component  tokens of radio button** for  *radios* objects
/// like `MISORadioButton` and `MISORadioButtonItem`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllRadioButtonComponentTokensProvider` implementation inside `MISOTheme` so as to provide all tokens to the users.
/// It helps users to override some of the tokens and assign them to an `MISOTheme` implementation to use.
/// It implements also the protocol `RadioButtonComponentTokens` so as to expose the component tokens for *radio buttons* through any `MISOTheme`.
/// *Radio buttons* components tokens are defined with raw and semantic tokens of sizes (from `SizeSemanticToken`) and
/// borders (`BorderRadiusSemanticToken`, `BorderWidthSemanticToken`).
/// These components share the same type of tokens which are all gathered here.
///
/// - Since: 1.0.0
open class BlueCoatThemeRadioButtonComponentTokensProvider: AllRadioButtonComponentTokensProvider {

    /// Provider of size semantic tokens to use for check / radio sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for check / radio borders
    let borders: AllBorderSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `MISORadioButton` and `MISORadioButtonItem`.
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``BlueCoatThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``BlueCoatThemeBorderSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil)
    {
        ML.debug("Init of BlueCoatThemeRadioButtonComponentTokensProvider")
        self.sizes = (sizes ?? BlueCoatThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? BlueCoatThemeBorderSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeRadioButtonComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of RadioButtonComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+RadioButtonComponentTokens.swift
    // This declaration of BlueCoatThemeRadioButtonComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
