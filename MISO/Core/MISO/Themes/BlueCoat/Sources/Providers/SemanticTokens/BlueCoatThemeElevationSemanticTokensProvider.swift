// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultElevationSemanticTokensProvider = BlueCoatThemeElevationSemanticTokensProvider

/// A class which wraps all **elevation semantic tokens**, *multiple*, *composite* or not, and expose them.
/// This provider should be integrated as a `AllElevationSemanticTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users.
///
/// - Since: 1.0.0
open class BlueCoatThemeElevationSemanticTokensProvider: AllElevationSemanticTokensProvider {

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    public init() {
        ML.debug("Init of BlueCoatThemeElevationSemanticTokensProvider")
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeElevationSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of ElevationSemanticTokens and ElevationCompositeSemanticTokens are not here
    // but in Core/MISO/Themes/BlueCoat/Values/SemanticTokens/BlueCoatTheme+ElevationSemanticTokens.swift,
    // and in Core/MISO/Themes/BlueCoat/Values/SemanticTokens/BlueCoatTheme+ElevationCompositeSemanticTokens.swift.
    // This declaration of BlueCoatThemeElevationSemanticTokensProvider is here to allow to write documentation.
}

// swiftlint:enable type_name
