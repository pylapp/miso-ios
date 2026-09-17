// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOFoundations
import MISOThemesContract
import MISOThemesMISOBlueCoat
import SwiftUI

/// *Foxy Rough*, a theme with tints of red and gray, "Lipstick on a Grey Suit".
///
/// # Details
///
/// Subclasses `DefaultTheme` (here `BlueCoatTheme`) and overrides three aspects:
/// - **Colors** — ``FoxyRoughColorTokensProvider``: cold concrete-grey backgrounds
///   with blood-red (`#C0392B` light / `#FF6B6B` dark) brand accents.
/// - **Font family** — Winky Rough (six weights, bundled as TTF files in the app target),
///   registered once on first initialisation via `registerFonts()`.
/// - **Tuning** — Rounded buttons, inputs, and alerts for a polished corporate feel that contrasts with the raw input content.
///
/// - Since: 1.1.0
open class FoxyRoughTheme: DefaultTheme, @unchecked Sendable {

    /// Stable string identifier for this theme.
    ///
    /// Can be used for analytics, theme-switching logic, or debugging.
    public static let themeName = "FoxyRough"

    /// Guards against registering the Winky Rough font files more than once.
    ///
    /// `CTFontManagerRegisterFontsForURL` emits warnings on repeated registration,
    /// so this flag ensures the call is made exactly once per process lifetime.
    nonisolated(unsafe) private static var fontsAlreadyRegistered: Bool = false

    /// Creates the FoxyRough theme and registers the custom font family.
    ///
    /// Configures the `DefaultTheme` superclass with ``FoxyRoughColorTokensProvider``,
    /// the Winky Rough font family, and the tuning, then calls
    /// `registerFonts()` to load the TTF files from the app bundle.
    override public init() {
        let colors = FoxyRoughColorTokensProvider()
        let button = FoxyRoughButtonTokensProvider()
        let fonts = FoxyRoughFontSemanticTokensProvider()
        let tuning: Tuning = .init(hasRoundedButtons: true,
                                   hasRoundedTextInputs: true,
                                   hasRoundedAlertMessages: true,
                                   hasRoundedProgressIndicators: true,
                                   hasRoundedListItems: true)
        let fontFamily = "Winky Rough"
        super.init(
            colors: colors as AllColorSemanticTokensProvider,
            fonts: fonts as AllFontSemanticTokensProvider,
            button: button as AllButtonComponentTokensProvider,
            name: FoxyRoughTheme.themeName,
            fontFamily: fontFamily,
            tuning: tuning)
        registerFonts()
    }

    deinit {}

    /// Registers all six Winky Rough weight variants with the MISO typography system
    /// and loads their TTF files from the app bundle via `CTFontManagerRegisterFontsForURL`.
    ///
    /// Guarded by ``fontsAlreadyRegistered`` so it is safe to call multiple times
    /// without triggering duplicate-registration warnings.
    private func registerFonts() {
        if !FoxyRoughTheme.fontsAlreadyRegistered {
            registerFont(postScript: "WinkyRough-Regular_Light", forCombination: PSFNMK("Winky Rough", Font.Weight.light))
            registerFont(postScript: "WinkyRough-Regular", forCombination: PSFNMK("Winky Rough", Font.Weight.regular))
            registerFont(postScript: "WinkyRough-Regular_Medium", forCombination: PSFNMK("Winky Rough", Font.Weight.medium))
            registerFont(postScript: "WinkyRough-Regular_SemiBold", forCombination: PSFNMK("Winky Rough", Font.Weight.semibold))
            registerFont(postScript: "WinkyRough-Regular_Bold", forCombination: PSFNMK("Winky Rough", Font.Weight.bold))
            registerFont(postScript: "WinkyRough-Regular_Black", forCombination: PSFNMK("Winky Rough", Font.Weight.black))

            let fonts = Bundle.FoxyRoughTheme.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
            fonts?.forEach {
                CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil)
            }
            FoxyRoughTheme.fontsAlreadyRegistered = true
        }
    }
}
