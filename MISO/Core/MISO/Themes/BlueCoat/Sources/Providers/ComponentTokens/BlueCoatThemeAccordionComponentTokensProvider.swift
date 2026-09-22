// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultAccordionComponentTokensProvider = BlueCoatThemeAccordionComponentTokensProvider

/// A class which wraps all **component  tokens of accordions** for *accordions* components.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllAccordionComponentTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `MISOTheme` implementation to use.
/// It implements also the protocol `AccordionComponentTokens` and `AccordionFaqComponentTokens`
/// so as to expose the component tokens for *accordions* through any `MISOTheme`.
/// *Accordions* components tokens are defined with semantic tokens spaces (from `AllSpaceSemanticTokensProvider`)
/// and sizes (from `AllSizeSemanticTokensProvider`).
///
/// - Since: 1.0.0
open class BlueCoatThemeAccordionComponentTokensProvider: AllAccordionComponentTokensProvider {

    /// Provider of sizes semantic tokens to use for alert sizes
    let sizes: AllSizeSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for alert spaces
    let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to accordions.
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens, if nil, a default one will be used (``BlueCoatThemeSizeSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens, if nil, a default one will be used (``BlueCoatThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        ML.debug("Init of BlueCoatThemeAccordionComponentTokensProvider")
        self.sizes = (sizes ?? BlueCoatThemeSizeSemanticTokensProvider())
        self.spaces = (spaces ?? BlueCoatThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeAccordionComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of AccordionComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+AccordionComponentTokens.swift
    // This declaration of BlueCoatThemeAccordionComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
