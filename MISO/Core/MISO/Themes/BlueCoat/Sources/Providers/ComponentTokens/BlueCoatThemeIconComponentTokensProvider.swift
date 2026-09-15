// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOFoundations
import MISOThemesContract

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultIconComponentTokensProvider = BlueCoatThemeIconComponentTokensProvider

/// A class which wraps all **component  tokens of icons** for *icons* used in some components like `MISOTag`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllIconComponentTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users.
/// It implements also the protocol `IconomponentTokens` so as to expose the component tokens for *icons* through any `MISOTheme`.
/// *Icons* components tokens are defined with raw and semantic tokens of colors (from `AllColorSemanticTokensProvider`).
///
/// - Since: 1.0.0
open class BlueCoatThemeIconComponentTokensProvider: AllIconComponentTokensProvider {

    /// Provider of color semantic tokens to use for link colors
    let colors: AllColorSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to icons
    /// - Parameters:
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``BlueCoatThemeColorSemanticTokensProvider``)
    public init(colors: AllColorSemanticTokensProvider? = nil) {
        ML.debug("Init of BlueCoatThemeIconComponentTokensProvider")
        self.colors = (colors ?? BlueCoatThemeColorSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeIconComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of IconComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+IconComponentTokens.swift
    // This declaration of BlueCoatThemeIconComponentTokensProvider is here also to allow to write documentation.
}
