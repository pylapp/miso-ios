// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

@testable import MISOThemesMISOBlueCoat
import SwiftUI
import Testing

// swiftlint:disable type_name

/// Check if the semantic tokens provider for space tokens under test as the good rules implementations
struct BlueCoatThemeSpaceSemanticTokensProviderTests {

    private var provider: BlueCoatThemeSpaceSemanticTokensProvider

    init() {
        provider = BlueCoatThemeSpaceSemanticTokensProvider()
    }

    // MARK: - Tests

    @Test func defaultDimensionsSemanticTokensProvider() throws {
        #expect(provider.dimensions is BlueCoatThemeDimensionSemanticTokensProvider)
    }
}

// swiftlint:enable type_name
