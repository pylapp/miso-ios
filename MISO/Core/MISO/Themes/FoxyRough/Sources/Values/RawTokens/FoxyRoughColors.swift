// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import SwiftUI

/// Central colour palette for the FoxyRough theme  — "Lipstick on a Grey Suit"
///
/// ## Palette overview
///
/// | Name | Light | Dark | Role |
/// |---|---|---|---|
/// | `bloodRed` | `#C0392B` |  — | Brand accent, brand button background |
/// | `vividRed` |  — | `#FF6B6B` | Brand accent dark |
/// | `darkBloodRed` | `#962D22` |  — | Brand pressed state |
/// | `darkVividRed` |  — | `#E85555` | Brand pressed state dark |
/// | `concreteGrey` | `#F0F0F0` |  — | Background primary light |
/// | `nearBlack` | `#1C1C1E` |  — | Background primary dark / strong button bg light |
/// | `softGrey` | `#E0E0E0` |  — | Background secondary light / strong button bg dark |
/// | `deepGrey` | `#2C2C2E` |  — | Background secondary dark |
/// | `mutedLight` | `#6E6E73` |  — | Muted content light / disabled fg dark |
/// | `mutedDark` |  — | `#8E8E93` | Muted content dark / disabled fg light |
/// | `borderLight` | `#D0D0D0` |  — | Border light / button hover dark |
/// | `borderDark` | `#3A3A3A` |  — | Border dark / button hover light |
/// | `black` | `#000000` |  — | On-brand content dark fallback |
///
/// - Since: 1.1.0
public enum FoxyRoughColors {

    // MARK: — Brand red

    /// Blood red  — `#C0392B`.
    ///
    /// Used as brand accent in light mode: button backgrounds, icon tints, borders.
    public static let bloodRed = "#C0392BFF"

    /// Vivid red  — `#FF6B6B`.
    ///
    /// Used as brand accent in dark mode.
    public static let vividRed = "#FF6B6BFF"

    /// Darker blood red  — `#962D22`.
    ///
    /// Used for pressed / active states in light mode.
    public static let darkBloodRed = "#962D22FF"

    /// Darker vivid red  — `#E85555`.
    ///
    /// Used for pressed / active states in dark mode.
    public static let darkVividRed = "#E85555FF"

    // MARK: — Backgrounds

    /// Cold concrete grey  — `#F0F0F0`.
    ///
    /// Primary background in light mode. Also used as foreground on dark brand surfaces.
    public static let concreteGrey = "#F0F0F0FF"

    /// Near-black  — `#1C1C1E`.
    ///
    /// Primary background in dark mode. Also used as strong button background in light mode.
    public static let nearBlack = "#1C1C1EFF"

    /// Soft grey  — `#E0E0E0`.
    ///
    /// Secondary background in light mode. Also used as strong button background in dark mode.
    public static let softGrey = "#E0E0E0FF"

    /// Deep grey  — `#2C2C2E`.
    ///
    /// Secondary background in dark mode.
    public static let deepGrey = "#2C2C2EFF"

    // MARK: — Muted content

    /// Muted grey light  — `#6E6E73`.
    ///
    /// Secondary text and hint colour in light mode. Also used as disabled foreground in dark mode.
    public static let mutedLight = "#6E6E73FF"

    /// Muted grey dark  — `#8E8E93`.
    ///
    /// Secondary text and hint colour in dark mode. Also used as disabled foreground in light mode.
    public static let mutedDark = "#8E8E93FF"

    // MARK: — Borders & dividers

    /// Light border  — `#D0D0D0`.
    ///
    /// Subtle card and container border in light mode. Also used as hover background in dark mode.
    public static let borderLight = "#D0D0D0FF"

    /// Dark border  — `#3A3A3A`.
    ///
    /// Subtle card and container border in dark mode. Also used as hover background in light mode.
    public static let borderDark = "#3A3A3AFF"

    // MARK: — Absolute

    /// Pure black  — `#000000`.
    ///
    /// Foreground on vivid-red brand surfaces in dark mode.
    public static let black = "#000000FF"

    // MARK: — Transparency

    /// Fully transparent black  — `#00000000`.
    ///
    /// Used as the light-mode background of the `.default` button appearance,
    /// so it stays a plain outline button instead of inheriting MISO's tinted overlay.
    public static let transparentBlack = "#00000000"

    /// Fully transparent white  — `#FFFFFF00`.
    ///
    /// Used as the dark-mode background of the `.default` button appearance,
    /// so it stays a plain outline button instead of inheriting MISO's tinted overlay.
    public static let transparentWhite = "#FFFFFF00"

    // MARK: — SwiftUI Color helpers

    /// Blood red as a SwiftUI `Color` (light mode value), for use outside the MISO token system.
    public static let bloodRedColor = Color(red: 0xC0 / 255, green: 0x39 / 255, blue: 0x2B / 255)

    /// Near-black as a SwiftUI `Color`, for use outside the MISO token system.
    public static let nearBlackColor = Color(red: 0x1C / 255, green: 0x1C / 255, blue: 0x1E / 255)
}
