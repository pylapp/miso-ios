// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOFoundations
import MISOThemesContract

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultGridSemanticTokensProvider = BlueCoatThemeGridSemanticTokensProvider

/// A class which wraps all **grid semantic tokens** and expose them.
/// This provider should be integrated as a `AllGridSemanticTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users.
///
/// - Since: 1.0.0
open class BlueCoatThemeGridSemanticTokensProvider: AllGridSemanticTokensProvider {

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    public init() {
        ML.debug("Init of BlueCoatThemeGridSemanticTokensProvider")
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeGridSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of GridSemanticTokens is not here but in Core/MISO/Themes/BlueCoat/Values/SemanticTokens/BlueCoatTheme+GridSemanticTokens.swift
    // This declaration of BlueCoatThemeGridSemanticTokensProvider is here to allow to write documentation.
}
