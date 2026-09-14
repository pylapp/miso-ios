// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// A class which wraps all **component  tokens of typography** for *typography* components like `MISOText`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllTypographyComponentTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `MISOTheme` implementation to use.
/// It implements also the protocol `TypographyComponentTokens` so as to expose the component tokens for *typography* through any `MISOTheme`.
/// *Typography* components tokens are defined with semantic tokens of spaces (from `AllSpaceSemanticTokensProvider`).
///
/// - Since: 1.0.0
open class BlueCoatThemeTypographyComponentTokensProvider: AllTypographyComponentTokensProvider {

    /// Provider of spaces semantic tokens to use for button spaces
    let spaces: AllSpaceSemanticTokensProvider

    /// Provider of color semantic tokens to use for typography colors
    let colors: AllColorSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to progress indicators.
    ///
    /// - Parameters:
    ///    - spaces: Provider for space semantic tokens, if nil, a default one will be used (``BlueCoatThemeSpaceSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens, if nil, a default one will be used (``BlueCoatThemeColorSemanticTokensProvider``)
    public init(spaces: AllSpaceSemanticTokensProvider? = nil, colors: AllColorSemanticTokensProvider? = nil) {
        ML.debug("Init of BlueCoatThemeTypographyComponentTokensProvider")
        self.spaces = (spaces ?? BlueCoatThemeSpaceSemanticTokensProvider())
        self.colors = (colors ?? BlueCoatThemeColorSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeTypographyComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of TypographyComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+TypographyComponentTokens.swift
    // This declaration of BlueCoatThemeTypographyComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
