// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

#if os(macOS)
@testable import MISOThemesMISOBlueCoat
import MISOTokensRaw
import MISOTokensSemantic
import Testing

/// Tests crash scenarios for `BlueCoatTheme` color mode handling using Swift Testing's `#expect(exitsWith:)`.
/// These tests verify that the theme correctly enforces constraints by crashing when
/// undefined or unmanaged color mode tokens are used.
///
/// **Should be run on macOS to catch the failure crash, not possible on iOS yet**
struct BlueCoatThemeColorModeCrashTests {

    /// Verify that `BlueCoatTheme` crashes when trying to use a color mode token with undefined value.
    /// Undefined values (⛔️) are forbidden and should trigger a fatal error.
    @Test
    func blueCoatThemeCrashesWithUndefinedColorModeValue() async {
        await #expect(processExitsWith: .failure) {
            let provider = BlueCoatThemeColorModeSemanticTokensProvider()
            let undefinedToken = MultipleColorModeSemanticToken("undefinedTest",
                                                                light: ColorModeRawTokens.undefined,
                                                                dark: ColorModeRawTokens.dark)
            _ = provider.toColor(from: undefinedToken)
        }
    }

    /// Verify that `BlueCoatTheme` crashes when trying to use an unmanaged color mode token.
    /// All color mode tokens must be explicitly managed in the theme's `toColor(from:)` method.
    @Test
    func blueCoatThemeCrashesWithUnmanagedColorModeToken() async {
        await #expect(processExitsWith: .failure) {
            let provider = BlueCoatThemeColorModeSemanticTokensProvider()
            let unmanagedToken = MultipleColorModeSemanticToken("unmanagedTest",
                                                                light: ColorModeRawTokens.light,
                                                                dark: ColorModeRawTokens.dark)
            _ = provider.toColor(from: unmanagedToken)
        }
    }
}
#endif
