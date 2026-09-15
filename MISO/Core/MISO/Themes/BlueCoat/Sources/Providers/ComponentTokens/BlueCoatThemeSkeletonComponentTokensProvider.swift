// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOFoundations
import MISOThemesContract

// swiftlint:disable type_name

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultSkeletonComponentTokensProvider = BlueCoatThemeSkeletonComponentTokensProvider

/// A class which wraps all **component  tokens of skeleton** for *skeleton* objects like `MISOSkeleton`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllSkeletonComponentTokensProvider` implementation inside `MISOTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `MISOTheme` implementation to use.
/// It implements also the protocol `SkeletonComponentTokens` so as to expose the component tokens for *skeleton* through any `MISOTheme`.
/// *Skeleton* components tokens are defined with semantic tokens of colors (from `AllColorSemanticTokensProvider`).
///
/// - Since: 1.0.0
open class BlueCoatThemeSkeletonComponentTokensProvider: AllSkeletonComponentTokensProvider {

    /// Provider of color semantic tokens to use for link colors
    let colors: AllColorSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `MISOSkeleton`
    /// - Parameter colors: Provider for color semantic tokens. If nil, a default one will be used (``BlueCoatThemeColorSemanticTokensProvider``)
    public init(colors: AllColorSemanticTokensProvider? = nil) {
        ML.debug("Init of BlueCoatThemeSkeletonComponentTokensProvider")
        self.colors = (colors ?? BlueCoatThemeColorSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "BlueCoatThemeSkeletonComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of SkeletonComponentTokens is not here but in Core/MISO/Themes/BlueCoat/Values/ComponentTokens/BlueCoatTheme+SkeletonComponentTokens.swift
    // This declaration of BlueCoatThemeSkeletonComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
