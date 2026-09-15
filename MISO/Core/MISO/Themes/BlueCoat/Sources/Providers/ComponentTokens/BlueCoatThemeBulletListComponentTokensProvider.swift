// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultBulletListComponentTokensProvider = BlueCoatThemeBulletListComponentTokensProvider

/// A class which wraps all **component  tokens of bullet list** for *bullet list* objects like `MISOBulletList`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllBulletListComponentTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `MISOTheme` implementation to use.
/// It implements also the protocol `BulletListComponentTokens` so as to expose the component tokens for *bullet list* through any `MISOTheme`.
/// *Bullet list* components tokens are defined with raw and semantic tokens of spaces (from `AllSpaceSemanticTokensProvider`).
///
/// - Since: 1.0.0
open class BlueCoatThemeBulletListComponentTokensProvider: AllBulletListComponentTokensProvider {

    /// Provider of spaces semantic tokens to use for link spaces
    let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `MISOLink`
    /// - Parameter spaces: Provider for space semantic tokens. If nil, a default one will be used (``BlueCoatThemeSpaceSemanticTokensProvider``)
    public init(spaces: AllSpaceSemanticTokensProvider? = nil) {
        ML.debug("Init of BlueCoatThemeBulletListComponentTokensProvider")
        self.spaces = (spaces ?? BlueCoatThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeBulletListComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of BulletListComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+BulletListComponentTokens.swift
    // This declaration of BlueCoatThemeBulletListComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
