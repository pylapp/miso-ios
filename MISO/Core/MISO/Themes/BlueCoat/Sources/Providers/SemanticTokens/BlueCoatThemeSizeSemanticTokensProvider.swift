// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOFoundations
import MISOThemesContract

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultSizeSemanticTokensProvider = BlueCoatThemeSizeSemanticTokensProvider

/// A class which wraps all **size semantic tokens**, *multiple* or not, and expose them.
/// This provider should be integrated as a `AllSizeSemanticTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users.
/// Closed tokens of dimensions (`AllDimensionSemanticTokensProvider`) are used so as to keep consistancy between Figma specifications and library for developers.
///
/// - Since: 1.0.0
open class BlueCoatThemeSizeSemanticTokensProvider: AllSizeSemanticTokensProvider {

    /// Provider of _dimensions_  semantic tokens to use for spaces as the Swift package exposes "closed" tokens of Figma
    let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    /// - Parameter dimensions: Provider for _ semantic tokens. If nil, a default one will be used (``BlueCoatThemeDimensionSemanticTokensProvider``)
    public init(dimensions: AllDimensionSemanticTokensProvider? = nil) {
        ML.debug("Init of BlueCoatThemeSizeSemanticTokensProvider")
        self.dimensions = (dimensions ?? BlueCoatThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeSizeSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of SizeSemanticTokens and SizeMultipleSemanticTokens are not here
    // but in Core/MISO/Themes/BlueCoat/Values/SemanticTokens/BlueCoatTheme+SizeSemanticTokens.swift
    // and in Core/MISO/Themes/BlueCoat/Values/SemanticTokens/BlueCoatTheme+SizeMultipleSemanticTokens.swift
    // This declaration of BlueCoatThemeSizeSemanticTokensProvider is here to allow to write documentation.
}
