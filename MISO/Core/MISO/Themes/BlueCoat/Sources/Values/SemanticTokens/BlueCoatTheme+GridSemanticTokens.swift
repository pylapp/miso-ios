// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensRaw
import MISOTokensSemantic

extension BlueCoatThemeGridSemanticTokensProvider: GridSemanticTokens {
    /// Has for value token GridRawTokens.columnGap200 (= 16)
    @objc open var compactColumnGap: GridSemanticToken { GridRawTokens.columnGap200 }
    /// Has for value token GridRawTokens.margin300 (= 24)
    @objc open var compactMargin: GridSemanticToken { GridRawTokens.margin300 }
    /// Has for value token GridRawTokens.maxWidthCompact (= 852)
    @objc open var compactMaxWidth: GridSemanticToken { GridRawTokens.maxWidthCompact }
    /// Has for value token GridRawTokens.minWidthCompact (= 390)
    @objc open var compactMinWidth: GridSemanticToken { GridRawTokens.minWidthCompact }
    /// Has for value token GridRawTokens.columnGap100 (= 8)
    @objc open var extraCompactColumnGap: GridSemanticToken { GridRawTokens.columnGap100 }
    /// Has for value token GridRawTokens.margin100 (= 16)
    @objc open var extraCompactMargin: GridSemanticToken { GridRawTokens.margin100 }
    /// Has for value token GridRawTokens.maxWidthExtraCompact (= 389)
    @objc open var extraCompactMaxWidth: GridSemanticToken { GridRawTokens.maxWidthExtraCompact }
    /// Has for value token GridRawTokens.minWidthExtraCompact (= 320)
    @objc open var extraCompactMinWidth: GridSemanticToken { GridRawTokens.minWidthExtraCompact }
    /// Has for value token GridRawTokens.columnGap400 (= 24)
    @objc open var regularColumnGap: GridSemanticToken { GridRawTokens.columnGap400 }
    /// Has for value token GridRawTokens.margin500 (= 32)
    @objc open var regularMargin: GridSemanticToken { GridRawTokens.margin500 }
    /// Has for value token GridRawTokens.maxWidthRegular (= 1366)
    @objc open var regularMaxWidth: GridSemanticToken { GridRawTokens.maxWidthRegular }
    /// Has for value token GridRawTokens.minWidthRegular (= 736)
    @objc open var regularMinWidth: GridSemanticToken { GridRawTokens.minWidthRegular }
}
