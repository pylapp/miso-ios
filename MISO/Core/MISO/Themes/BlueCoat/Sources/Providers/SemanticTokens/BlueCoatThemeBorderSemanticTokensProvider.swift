// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultBorderSemanticTokensProvider = BlueCoatThemeBorderSemanticTokensProvider

/// A class which wraps all **border semantic tokens** and expose them.
/// This provider should be integrated as a `AllBorderSemanticTokensProvider` implementation inside some `MISOTheme` so as to provide
/// all tokens to the users.
///
/// - Since: 1.0.0
open class BlueCoatThemeBorderSemanticTokensProvider: AllBorderSemanticTokensProvider {

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    public init() {
        ML.debug("Init of BlueCoatThemeBorderSemanticTokensProvider")
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeBorderSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of BorderSemanticTokens is not here but in Core/MISO/Themes/BlueCoat/Values/SemanticTokens/BlueCoatTheme+BorderSemanticTokens.swift
    // This declaration of BlueCoatThemeBorderSemanticTokensProvider is here to allow to write documentation.
}

// swiftlint:enable type_name
