// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultAlertComponentTokensProvider = BlueCoatThemeAlertComponentTokensProvider

/// A class which wraps all **component  tokens of alert** for *alert* objects like `MISOAlertMessage`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllAlertComponentTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users.
/// It implements also the protocol `AlertComponentTokens` so as to expose the component tokens for *alert* through any `MISOTheme`.
/// *Alert* components tokens are defined with semantic tokens of borders (`AllBorderSemanticTokensProviders`),
/// spaces (from `AllSpaceSemanticTokensProvider`) and sizes (from `AllSizeSemanticTokensProvider`).
///
/// - Since: 1.0.0
open class BlueCoatThemeAlertComponentTokensProvider: AllAlertComponentTokensProvider {

    /// Provider of sizes semantic tokens to use for alert sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of borders semantic tokens to use for alert borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for alert spaces
    let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `MISOAlertMessage`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens, if nil, a default one will be used (``BlueCoatThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens, if nil, default one will be used ( ``BlueCoatThemeBorderSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens, if nil, a default one will be used (``BlueCoatThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        ML.debug("Init of BlueCoatThemeAlertComponentTokensProvider")
        self.sizes = (sizes ?? BlueCoatThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? BlueCoatThemeBorderSemanticTokensProvider())
        self.spaces = (spaces ?? BlueCoatThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeAlertComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of AlertComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+AlertComponentTokens.swift
    // This declaration of BlueCoatThemeAlertComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
