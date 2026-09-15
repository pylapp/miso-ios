// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultInputTagComponentTokensProvider = BlueCoatThemeInputTagComponentTokensProvider

/// A class which wraps all **component  tokens of tag input** objects like `MISOInputTag`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// It implements also the protocol `InputTagComponentTokens` so as to expose the component tokens for *tag inputs* through any `MISOTheme`.
/// *Tag inputs* components tokens are defined with semantic tokens of colors (from `AllColorSemanticTokensProvider`),
/// and borders (from `AllBorderSemanticTokensProvider`).
///
/// - Since: 1.0.0
open class BlueCoatThemeInputTagComponentTokensProvider: AllInputTagComponentTokensProvider {

    /// Provider of border semantic tokens to use for tag input borders
    let borders: AllBorderSemanticTokensProvider

    /// Provider of space semantic tokens to use for tag input colors
    let colors: AllColorSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `MISOInputTag`
    /// - Parameters:
    ///    - borders: Provider for borders semantic tokens. If nil, a default one will be used (``BlueCoatThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for _ semantic tokens. If nil, a default one will be used (``BlueCoatThemeColorSemanticTokensProvider``)
    public init(borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil)
    {
        ML.debug("Init of BlueCoatThemeInputTagComponentTokensProvider")
        self.borders = (borders ?? BlueCoatThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? BlueCoatThemeColorSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeInputTagComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of InputTagComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+InputTagComponentTokens.swift
    // This declaration of BlueCoatThemeInputTagComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
