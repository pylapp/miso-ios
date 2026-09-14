// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// A class which wraps all **component  tokens of divider** for *divider* objects like `MISOHorizontalDivider` and `MISOVerticalDivider`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllDividerComponentTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `MISOTheme` implementation to use.
/// It implements also the protocol `DividerComponentTokens` so as to expose the component tokens for *divider* through any `MISOTheme`.
/// *Divider* components tokens are defined with raw and semantic tokens of borders (from `AllBorderSemanticTokensProvider`).
///
/// - Since: 1.0.0
open class BlueCoatThemeDividerComponentTokensProvider: AllDividerComponentTokensProvider {

    /// Provider of border semantic tokens to use for chip sizes
    let borders: AllBorderSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `MISOHorizontalDivider` and `MISOVerticalDivider`
    /// - Parameter borders: Provider for border semantic tokens. If nil, a default one will be used (``BlueCoatThemeBorderSemanticTokensProvider``)
    public init(borders: AllBorderSemanticTokensProvider? = nil) {
        ML.debug("Init of BlueCoatThemeDividerComponentTokensProvider")
        self.borders = (borders ?? BlueCoatThemeBorderSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeDividerComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of ChipComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+ChipComponentTokens.swift
    // This declaration of BlueCoatThemeChipComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
