// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

@testable import MISOThemesMISOBlueCoat
import Testing

// swiftlint:disable type_name

/// Check if the component tokens provider under test as the default semantic token providers with the expected types.
struct BlueCoatThemeAlertMessageComponentTokensProviderTests {

    private var provider: BlueCoatThemeAlertMessageComponentTokensProvider

    init() {
        provider = BlueCoatThemeAlertMessageComponentTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultBordersSemanticTokensProvider() throws {
        #expect(provider.borders is BlueCoatThemeBorderSemanticTokensProvider)
    }

    @Test func defaultSpacesSemanticTokensProvider() throws {
        #expect(provider.spaces is BlueCoatThemeSpaceSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
