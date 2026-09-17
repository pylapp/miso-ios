// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultToastComponentTokensProvider = BlueCoatThemeToastComponentTokensProvider

/// A class which wraps all **component  tokens of toast** for *toast* objects like `MISOToast`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllToastComponentTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `MISOTheme` implementation to use.
/// It implements also the protocol `ToastComponentTokens` so as to expose the component tokens for *toast* through any `MISOTheme`.
/// *Toast* components tokens are defined with semantic tokens of borders (`AllBorderSemanticTokensProvider`),
/// dimensions (`AllDimensionSemanticTokensProvider`) and sizes (from `AllSizeSemanticTokensProvider`).
///
/// - Since: 1.0.0
open class BlueCoatThemeToastComponentTokensProvider: AllToastComponentTokensProvider {

    /// Provider of borders semantic tokens to use for toast borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of _dimensions_ semantic tokens to use for sizes as the Swift package exposes "closed" tokens of Figma
    let dimensions: AllDimensionSemanticTokensProvider

    /// Provider of sizes semantic tokens to use for toast sizes
    let sizes: AllSizeSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `MISOToast`
    /// - Parameters:
    ///    - borders: Provider for border semantic tokens, if nil, a default one will be used (``BlueCoatThemeBorderSemanticTokensProvider``)
    ///    - dimensions: Provider for dimension semantic tokens, if nil, default one will be used ( ``BlueCoatThemeDimensionSemanticTokensProvider``)
    ///    - sizes: Provider for size semantic tokens, if nil, default one will be used ( ``BlueCoatThemeSizeSemanticTokensProvider``)
    public init(borders: AllBorderSemanticTokensProvider? = nil,
                dimensions: AllDimensionSemanticTokensProvider? = nil,
                sizes: AllSizeSemanticTokensProvider? = nil)
    {
        ML.debug("Init of BlueCoatThemeToastComponentTokensProvider")
        self.borders = (borders ?? BlueCoatThemeBorderSemanticTokensProvider())
        self.dimensions = (dimensions ?? BlueCoatThemeDimensionSemanticTokensProvider())
        self.sizes = (sizes ?? BlueCoatThemeSizeSemanticTokensProvider(dimensions: self.dimensions))
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeToastComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of ToastComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+ToastComponentTokens.swift
    // This declaration of BlueCoatThemeToastComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
