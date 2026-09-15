// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultQuantityInputComponentTokensProvider = BlueCoatThemeQuantityInputComponentTokensProvider

/// A class which wraps all **component  tokens of quantity input** objects like `MISOQuantityInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllQuantityInputComponentTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `MISOTheme` implementation to use.
///
/// - Since: 1.0.0
open class BlueCoatThemeQuantityInputComponentTokensProvider: AllQuantityInputComponentTokensProvider {

    /// Provider of size semantic tokens to use for quantity input component
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of space semantic tokens to use for quantity input component
    let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `MISOQuantityInput`
    /// - Parameters:
    ///    - sizes: Provider for borders semantic tokens. If nil, a default one will be used (``BlueCoatThemeSizeSemanticTokensProvider``)
    ///    - spaces: Provider for _ semantic tokens. If nil, a default one will be used (``BlueCoatThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        ML.debug("Init of BlueCoatThemeQuantityInputComponentTokensProvider")
        self.sizes = (sizes ?? BlueCoatThemeSizeSemanticTokensProvider())
        self.spaces = (spaces ?? BlueCoatThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeQuantityInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of QuantityInputComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+QuantityInputComponentTokens.swift
    // This declaration of BlueCoatThemeQuantityInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
