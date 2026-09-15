// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultEffectSemanticTokensProvider = BlueCoatThemeEffectSemanticTokensProvider

/// A class which wraps all **effect semantic tokens**, and expose them.
/// This provider should be integrated as a `AllEffectSemanticTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users.
///
/// - Since: 1.0.0
open class BlueCoatThemeEffectSemanticTokensProvider: AllEffectSemanticTokensProvider {

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    public init() {
        ML.debug("Init of BlueCoatThemeEffectSemanticTokensProvider")
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeEffectSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of EffectSemanticTokens is not here
    // but in Core/MISO/Themes/BlueCoat/Values/SemanticTokens/BlueCoatTheme+EffectSemanticTokens.swift
    // This declaration of BlueCoatThemeEffectSemanticTokensProvider is here to allow to write documentation.
}

// swiftlint:enable type_name
