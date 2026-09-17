// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultButtonComponentTokensProvider = BlueCoatThemeButtonComponentTokensProvider

/// A class which wraps all **component  tokens of buttons** for *button* objects like `MISOButton`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllButtonComponentTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `MISOTheme` implementation to use.
/// It implements also the protocol `ButtonComponentTokens` so as to expose the component tokens for *buttons* through any `MISOTheme`.
/// *Button* components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`), borders
/// spaces (from `AllSpaceSemanticTokensProvider`).
///
/// - Since: 1.0.0
open class BlueCoatThemeButtonComponentTokensProvider: AllButtonComponentTokensProvider {

    /// Provider of size semantic tokens to use for button sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for button borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for button colors
    let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for button spaces
    let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `MISOButton`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``BlueCoatThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``BlueCoatThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``BlueCoatThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``BlueCoatThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        ML.debug("Init of BlueCoatThemeButtonComponentTokensProvider")
        self.sizes = (sizes ?? BlueCoatThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? BlueCoatThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? BlueCoatThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? BlueCoatThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeButtonComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of ButtonComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+ButtonComponentTokens.swift
    // This declaration of BlueCoatThemeButtonComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
