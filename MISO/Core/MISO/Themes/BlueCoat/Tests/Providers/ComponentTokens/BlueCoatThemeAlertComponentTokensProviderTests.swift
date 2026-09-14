// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

@testable import MISOThemesMISOBlueCoat
import Testing

// swiftlint:disable type_name

/// Check if the component tokens provider under tests has the default semantic token providers with the expected types.
struct BlueCoatThemeAlertComponentTokensProviderTests {

    private var provider: BlueCoatThemeAlertComponentTokensProvider

    init() {
        provider = BlueCoatThemeAlertComponentTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultSpaceSemanticTokensProvider() throws {
        #expect(provider.spaces is BlueCoatThemeSpaceSemanticTokensProvider)
    }

    @Test func defaultBorderSemanticTokensProvider() throws {
        #expect(provider.borders is BlueCoatThemeBorderSemanticTokensProvider)
    }

    @Test func defaultSizeSemanticTokensProvider() throws {
        #expect(provider.sizes is BlueCoatThemeSizeSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
