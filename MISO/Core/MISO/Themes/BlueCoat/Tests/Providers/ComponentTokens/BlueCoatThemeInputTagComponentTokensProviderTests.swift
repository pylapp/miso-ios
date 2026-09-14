// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

@testable import MISOThemesMISOBlueCoat
import Testing

// swiftlint:disable type_name

/// Check if the component tokens provider under test has the default semantic token providers with the expected types.
struct BlueCoatThemeInputTagComponentTokensProviderTests {

    private var provider: BlueCoatThemeInputTagComponentTokensProvider

    init() {
        provider = BlueCoatThemeInputTagComponentTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultBorderSemanticTokensProvider() throws {
        #expect(provider.borders is BlueCoatThemeBorderSemanticTokensProvider)
    }

    @Test func defaultColorSemanticTokensProvider() throws {
        #expect(provider.colors is BlueCoatThemeColorSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
