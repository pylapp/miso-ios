// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

@testable import MISOThemesMISOBlueCoat
import Testing

// swiftlint:disable type_name

/// Check if the semantic tokens provider for size tokens under test as the good rules implementations
struct BlueCoatThemeSizeSemanticTokensProviderTests {

    private var provider: BlueCoatThemeSizeSemanticTokensProvider

    init() {
        provider = BlueCoatThemeSizeSemanticTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultDimensionsSemanticTokensProvider() throws {
        #expect(provider.dimensions is BlueCoatThemeDimensionSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
