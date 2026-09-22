// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOThemesContract
import MISOThemesMISOBlueCoat
import Testing

/// Checks if the semantic tokens of opacities, as defined in the BlueCoat theme, have expected values and relationships
/// between them.
struct OpacitySemanticTokensValuesTests {

    private var theme: MISOTheme

    init() {
        theme = BlueCoatTheme()
    }

    // MARK: - Tests

    @Test("Opacities must be bigger and bigger")
    func opacities() throws {
        #expect(theme.opacities.invisible < theme.opacities.weakest)
        #expect(theme.opacities.weakest < theme.opacities.weaker)
        #expect(theme.opacities.weaker < theme.opacities.weak)
        #expect(theme.opacities.weak < theme.opacities.medium)
        #expect(theme.opacities.medium < theme.opacities.strong)
        #expect(theme.opacities.strong < theme.opacities.opaque)
        // NOTE: "disabled" is particular, not tested here
    }
}
