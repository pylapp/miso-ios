// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultColorModesSemanticTokensProvider = BlueCoatThemeColorModeSemanticTokensProvider

/// A class which wraps all **color mode semantic tokens**, *multiple* or not, and expose them.
/// This provider should be integrated as a `AllColorModeSemanticTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users.
///
/// - Since: 1.0.0
open class BlueCoatThemeColorModeSemanticTokensProvider: AllColorModeSemanticTokensProvider {

    /// Provider of color semantic tokens to use for depending to some color modes
    let colors: AllColorSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of color mode semantic tokens
    /// - Parameter colors: Provider for color semantic tokens. If nil, a default one will be used (``BlueCoatThemeColorSemanticTokensProvider``)
    public init(colors: AllColorSemanticTokensProvider? = nil) {
        ML.debug("Init of BlueCoatThemeColorModeSemanticTokensProvider")
        self.colors = (colors ?? BlueCoatThemeColorSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeColorModeSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of ColorModeSemanticTokens and ColorModeMultipleSemanticTokens are not here
    // but in Core/MISO/Themes/BlueCoat/Values/SemanticTokens/BlueCoatTheme+ColorModeMultipleSemanticTokens.swift
    // and in Core/MISO/Themes/BlueCoat/Values/SemanticTokens/BlueCoatTheme+ColorModeSemanticTokens.swift
    // This declaration of BlueCoatThemeColorModeSemanticTokensProvider is here to allow to write documentation.
}

// swiftlint:enable type_name
