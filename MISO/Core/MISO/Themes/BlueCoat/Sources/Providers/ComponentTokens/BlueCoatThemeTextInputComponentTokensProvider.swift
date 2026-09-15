// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultTextInputComponentTokensProvider = BlueCoatThemeTextInputComponentTokensProvider

/// A class which wraps all **component  tokens of input text** for *input text* objects like `MISOTextInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllTextInputComponentTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `MISOTheme` implementation to use.
/// It implements also the protocol `InouttextComponentTokens` so as to expose the component tokens for *input text* through any `MISOTheme`.
/// *Inout text* components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`), colors (`AllColorSemanticTokensProvider`)
/// and spaces (from `AllSpaceSemanticTokensProvider`).
///
/// - Since: 1.0.0
open class BlueCoatThemeTextInputComponentTokensProvider: AllTextInputComponentTokensProvider {

    /// Provider of size semantic tokens to use for text input sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for text input sborders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for  text input colors
    let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for  text input spaces
    let spaces: AllSpaceSemanticTokensProvider

    /// Provider of dimensions semantic tokens to use for  text input dimensions
    let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `MISOButton`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (`BlueCoatThemeSizeSemanticTokensProvider`)
    ///    - borders: Provider for borders semantic tokens. If nil, a default one will be used (`BlueCoatThemeBorderSemanticTokensProvider`)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (`BlueCoatThemeColorSemanticTokensProvider`)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (`BlueCoatThemeSpaceSemanticTokensProvider`)
    ///    - dimensions: Provider for dimension semantic tokens. If nil, a default one will be used (`BlueCoatThemeDimensionSemanticTokensProvider`)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil,
                dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        ML.debug("Init of BlueCoatThemeTextInputComponentTokensProvider")
        self.sizes = (sizes ?? BlueCoatThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? BlueCoatThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? BlueCoatThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? BlueCoatThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? BlueCoatThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeTextInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of TextInputComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+TextInputComponentTokens.swift
    // This declaration of BlueCoatThemeTextInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
