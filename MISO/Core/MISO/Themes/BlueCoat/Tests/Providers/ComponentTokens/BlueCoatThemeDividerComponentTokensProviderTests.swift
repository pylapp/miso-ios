// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

@testable import MISOThemesMISOBlueCoat
import Testing

// swiftlint:disable type_name

/// Check if the component tokens provider under test as the default semantic token providers with the expected types.
struct BlueCoatThemeDividerComponentTokensProviderTests {

    private var provider: BlueCoatThemeDividerComponentTokensProvider

    init() {
        provider = BlueCoatThemeDividerComponentTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultBorderSemanticTokensProvider() throws {
        #expect(provider.borders is BlueCoatThemeBorderSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
