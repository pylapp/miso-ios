// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOFoundations
import MISOThemesContract

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultFontSemanticTokensProvider = BlueCoatThemeFontSemanticTokensProvider

/// A class which wraps all **font semantic tokens**, *multiple*, *composite* or not, and expose them.
/// This provider should be integrated as a `AllFontSemanticTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users.
///
/// - Since: 1.0.0
open class BlueCoatThemeFontSemanticTokensProvider: AllFontSemanticTokensProvider {

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    public init() {
        ML.debug("Init of BlueCoatThemeFontSemanticTokensProvider")
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeFontSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of FontSemanticTokens, FontCompositeSemanticTokens, FontMultipleSemanticTokens are not here
    // but in Core/MISO/Themes/BlueCoat/Values/SemanticTokens/BlueCoatTheme+FontSemanticTokens.swift,
    // in Core/MISO/Themes/BlueCoat/Values/SemanticTokens/BlueCoatTheme+FontCompositeSemanticTokens.swift,
    // and in Core/MISO/Themes/BlueCoat/Values/SemanticTokens/BlueCoatTheme+FontMultipleSemanticTokens.swift,
    // This declaration of MISOFontSemanticTokensProvider is here to allow to write documentation.
}
