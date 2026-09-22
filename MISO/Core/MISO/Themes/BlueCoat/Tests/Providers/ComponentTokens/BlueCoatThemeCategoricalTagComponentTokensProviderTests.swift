// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

@testable import MISOThemesMISOBlueCoat
import Testing

// swiftlint:disable type_name

/// Check if the component tokens provider under test as the default semantic token providers with the expected types.
struct BlueCoatThemeCategoricalTagComponentTokensProviderTests {

    private var provider: BlueCoatThemeCategoricalTagComponentTokensProvider

    init() {
        provider = BlueCoatThemeCategoricalTagComponentTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultColorSemanticTokensProvider() throws {
        #expect(provider.colors is BlueCoatThemeColorSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
