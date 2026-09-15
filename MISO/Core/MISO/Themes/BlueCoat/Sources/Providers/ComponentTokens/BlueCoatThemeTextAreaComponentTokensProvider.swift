// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultTextAreaComponentTokensProvider = BlueCoatThemeTextAreaComponentTokensProvider

/// A class which wraps all **component tokens of text area** objects like `MISOTextArea`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// It implements also the protocol `TextAreaComponentTokens` so as to expose the component tokens for *text area* through any `MISOTheme`.
/// *Text area* components tokens are defined with semantic tokens of sizes (from `AllSizeSemanticTokensProvider`)
/// and spaces (from `AllSpaceSemanticTokensProvider`).
///
/// - Since: 1.0.0
open class BlueCoatThemeTextAreaComponentTokensProvider: AllTextAreaComponentTokensProvider {

    /// Provider of sizes semantic tokens to use for text area sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of space semantic tokens to use for text area spaces
    let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `MISOTextArea`
    /// - Parameters:
    ///    - sizes: Provider for sizes semantic tokens. If nil, a default one will be used (``BlueCoatThemeSizeSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``BlueCoatThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        ML.debug("Init of BlueCoatThemeTextAreaComponentTokensProvider")
        self.sizes = (sizes ?? BlueCoatThemeSizeSemanticTokensProvider())
        self.spaces = (spaces ?? BlueCoatThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeTextAreaComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of TextAreaComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+TextAreaComponentTokens.swift
    // This declaration of BlueCoatThemeTextAreaComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
