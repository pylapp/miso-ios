// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOThemesContract
import MISOThemesMISOBlueCoat
import MISOTokensSemantic
import Testing

/// Tests some helper functions defined in extensions of `MISOTheme` in the *MISOThemesContract* module, related to grids tokens.
/// Cannot be tested there because no theme exists at that level., but here the ``BlueCoatTheme`` can be used.
struct GridSemanticTokenHelperTests {

    private let someTheme: MISOTheme = BlueCoatTheme()

    @Test func gridMinWith() throws {
        #expect(someTheme.grids.extraCompactMinWidth == someTheme.gridMinWidth(for: .extraCompact))
        #expect(someTheme.grids.compactMinWidth == someTheme.gridMinWidth(for: .compact))
        #expect(someTheme.grids.regularMinWidth == someTheme.gridMinWidth(for: .regular))
    }

    @Test func gridMaxWith() throws {
        #expect(someTheme.grids.extraCompactMaxWidth == someTheme.gridMaxWidth(for: .extraCompact))
        #expect(someTheme.grids.compactMaxWidth == someTheme.gridMaxWidth(for: .compact))
        #expect(someTheme.grids.regularMaxWidth == someTheme.gridMaxWidth(for: .regular))
    }

    @Test func gridMargin() throws {
        #expect(someTheme.grids.extraCompactMargin == someTheme.gridMargin(for: .extraCompact))
        #expect(someTheme.grids.compactMargin == someTheme.gridMargin(for: .compact))
        #expect(someTheme.grids.regularMargin == someTheme.gridMargin(for: .regular))
    }

    @Test func gridColumnGap() throws {
        #expect(someTheme.grids.extraCompactColumnGap == someTheme.gridColumnGap(for: .extraCompact))
        #expect(someTheme.grids.compactColumnGap == someTheme.gridColumnGap(for: .compact))
        #expect(someTheme.grids.regularColumnGap == someTheme.gridColumnGap(for: .regular))
    }
}
