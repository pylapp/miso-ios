// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

//
// Software Name: OUDS iOS
// SPDX-FileCopyrightText: Copyright (c) Orange SA
// SPDX-License-Identifier: MIT
//
// This software is distributed under the MIT license,
// the text of which is available at https://opensource.org/license/MIT/
// or see the "LICENSE" file for more details.
//
// Authors: See CONTRIBUTORS.txt
// Software description: A SwiftUI components library with code examples for Orange Unified Design System
//

import MISOThemesContract
import MISOThemesMISOBlueCoat
import MISOThemesMISOFoxyRough
import Testing

// swiftlint:disable type_name

/// Because the `MISOCategoricalTag` component is a `MISOTag` in the end but with very specific set of colors,
/// could be interesting to have an eye on the values to be sure they don't change.
struct FoxyRoughThemeCategoricalTagComponentTokensValuesTests {

    private var theme: MISOTheme

    init() {
        theme = FoxyRoughTheme()
    }

    // MARK: - Colors

    @Test func colorBgCategory1() throws {
        #expect(theme.categoricalTag.colorBgCategory1.light == BlueCoatBrandColorRawTokens.royalBlue500)
        #expect(theme.categoricalTag.colorBgCategory1.dark == BlueCoatBrandColorRawTokens.royalBlue300)
    }

    @Test func colorBgCategory2() throws {
        #expect(theme.categoricalTag.colorBgCategory2.light == BlueCoatBrandColorRawTokens.flame500)
        #expect(theme.categoricalTag.colorBgCategory2.dark == BlueCoatBrandColorRawTokens.flame300)
    }

    @Test func colorBgCategory3() throws {
        #expect(theme.categoricalTag.colorBgCategory3.light == BlueCoatBrandColorRawTokens.colorMountainMeadow600)
        #expect(theme.categoricalTag.colorBgCategory3.dark == BlueCoatBrandColorRawTokens.colorMountainMeadow400)
    }

    @Test func colorBgCategory4() throws {
        #expect(theme.categoricalTag.colorBgCategory4.light == BlueCoatBrandColorRawTokens.colorGoldTips500)
        #expect(theme.categoricalTag.colorBgCategory4.dark == BlueCoatBrandColorRawTokens.colorGoldTips400)
    }

    @Test func colorBgCategory5() throws {
        #expect(theme.categoricalTag.colorBgCategory5.light == BlueCoatBrandColorRawTokens.colorLightIndigo500)
        #expect(theme.categoricalTag.colorBgCategory5.dark == BlueCoatBrandColorRawTokens.colorLightIndigo300)
    }

    @Test func colorContent() throws {
        #expect(theme.categoricalTag.colorContent.light == BlueCoatBrandColorRawTokens.functionalGrayDark960)
        #expect(theme.categoricalTag.colorContent.dark == BlueCoatBrandColorRawTokens.functionalGrayDark960)
    }
}

// swiftlint:enable type_name
