// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOThemesContract
import MISOThemesMISOBlueCoat
import Testing

/// Checks if the semantic tokens of grids, as defined in the BlueCoat theme, have expected values and relationships
/// between them.
struct GridSemanticTokensValuesTests {

    private var theme: MISOTheme

    init() {
        theme = BlueCoatTheme()
    }

    // MARK: - Tests

    @Test("Min widths must be smaller than max widths")
    func widths() throws {
        #expect(theme.grids.extraCompactMinWidth < theme.grids.extraCompactMaxWidth)
        #expect(theme.grids.compactMinWidth < theme.grids.compactMaxWidth)
        #expect(theme.grids.regularMinWidth < theme.grids.regularMaxWidth)
    }
}
