// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOThemesMISOBlueCoat
import Testing

/// The aim of this tests class is to look for regressions in **Wriframe brand font raw tokens**.
///
/// Because these values will be at least generated through an external tool, is it not relevant to test each token values.
/// Indeed, each future generation of Swift code may break these tests because there are new values.
/// However, in the semantics of **BlueCoat brand font raw tokens**, there will be some unchanged things like relationships between tokens.
struct BlueCoatBrandFontRawTokensTests {

    @Test func blueCoatBrandFontRawTokenFontFamilyBrandDefault() throws {
        #expect(BlueCoatBrandFontRawTokens.familyDefault == "Shantell Sans")
    }
}
