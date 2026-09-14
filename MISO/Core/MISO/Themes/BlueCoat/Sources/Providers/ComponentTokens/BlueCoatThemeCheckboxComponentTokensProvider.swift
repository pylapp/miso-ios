// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// A class which wraps all **component  tokens of checkbox** for  *checkboxes* objects
/// like `MISOCheckbox` and `MISOCheckboxItem`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllCheckboxComponentTokensProvider` implementation inside `MISOTheme` so as to provide all tokens to the users.
/// It helps users to override some of the tokens and assign them to an `MISOTheme` implementation to use.
/// It implements also the protocol `CheckboxComponentTokens` so as to expose the component tokens for *checkboxes* through any `MISOTheme`.
/// *Checkboxes* components tokens are defined with raw and semantic tokens of sizes (from `SizeSemanticToken`) and
/// borders (`BorderRadiusSemanticToken`, `BorderWidthSemanticToken`).
/// These components share the same type of tokens which are all gathered here.
///
/// - Since: 1.0.0
open class BlueCoatThemeCheckboxComponentTokensProvider: AllCheckboxComponentTokensProvider {

    /// Provider of size semantic tokens to use for checkbox sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of border semantic tokens to use for checkbox borders
    let borders: AllBorderSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `MISOCheckbox` and `MISOCheckboxItem`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``BlueCoatThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``BlueCoatThemeBorderSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil)
    {
        ML.debug("Init of BlueCoatThemeCheckboxComponentTokensProvider")
        self.sizes = (sizes ?? BlueCoatThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? BlueCoatThemeBorderSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeCheckboxComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of CheckboxComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+CheckboxComponentTokens.swift
    // This declaration of BlueCoatThemeCheckboxComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
