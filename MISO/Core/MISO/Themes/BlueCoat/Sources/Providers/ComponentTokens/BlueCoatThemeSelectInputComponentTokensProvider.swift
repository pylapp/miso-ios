// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultSelectInputComponentTokensProvider = BlueCoatThemeSelectInputComponentTokensProvider

/// A class which wraps all **component  tokens of select input** for objects like `MISOSelectInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllSelectInputComponentTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `MISOTheme` implementation to use.
/// It implements also the protocol `SelectInputComponentTokens` so as to expose the component tokens for *select* through any `MISOTheme`.
/// *Select input* components tokens are defined with semantic tokens of dimensions (from `AllDimensionSemanticTokensProvider`).
///
/// - Since: 1.0.0
open class BlueCoatThemeSelectInputComponentTokensProvider: AllSelectInputComponentTokensProvider {

    /// Provider of dimensions semantic tokens to use for pin code input dimensions
    let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `MISOSelect`
    /// - Parameter dimensions: Provider for _ semantic tokens. If nil, a default one will be used (``BlueCoatThemeDimensionSemanticTokensProvider``)
    public init(dimensions: AllDimensionSemanticTokensProvider? = nil) {
        ML.debug("Init of BlueCoatThemeSelectInputComponentTokensProvider")
        self.dimensions = (dimensions ?? BlueCoatThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeSelectInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of SelectComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+SelectInputComponentTokens.swift
    // This declaration of BlueCoatThemeSelectInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
