// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

@testable import MISOThemesMISOBlueCoat
import Testing

// swiftlint:disable type_name

/// Check if the component tokens provider under test as the default semantic token providers with the expected types.
struct BlueCoatThemeLinkComponentTokensProviderTests {

    private var provider: BlueCoatThemeLinkComponentTokensProvider

    init() {
        provider = BlueCoatThemeLinkComponentTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultSizeSemanticTokensProvider() throws {
        #expect(provider.sizes is BlueCoatThemeSizeSemanticTokensProvider)
    }

    @Test func defaultColorSemanticTokensProvider() throws {
        #expect(provider.colors is BlueCoatThemeColorSemanticTokensProvider)
    }

    @Test func defaultSpaceSemanticTokensProvider() throws {
        #expect(provider.spaces is BlueCoatThemeSpaceSemanticTokensProvider)
    }

    @Test func defaultDimensionSemanticTokensProvider() throws {
        #expect(provider.dimensions is BlueCoatThemeDimensionSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
