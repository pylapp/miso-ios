// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

@testable import MISOThemesMISOBlueCoat
import Testing

// swiftlint:disable type_name

/// Check if the component tokens provider under tests has the default semantic token providers with the expected types.
struct BlueCoatThemeToastComponentTokensProviderTests {

    private var provider: BlueCoatThemeToastComponentTokensProvider

    init() {
        provider = BlueCoatThemeToastComponentTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultBordersSemanticTokensProvider() throws {
        #expect(provider.borders is BlueCoatThemeBorderSemanticTokensProvider)
    }

    @Test func defaultDimensionsSemanticTokensProvider() throws {
        #expect(provider.dimensions is BlueCoatThemeDimensionSemanticTokensProvider)
    }

    @Test func defaultSizesSemanticTokensProvider() throws {
        #expect(provider.sizes is BlueCoatThemeSizeSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
