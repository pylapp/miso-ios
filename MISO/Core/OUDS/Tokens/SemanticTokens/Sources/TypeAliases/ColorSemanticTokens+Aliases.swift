// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOTokensRaw

/// Basically a color semantic  token is a `ColorRawToken`, to keep grammar clean and clear with design system grammar.
public typealias ColorSemanticToken = ColorRawToken

extension ColorSemanticToken {

    /// Because some color semantic tokens can have forbidden values,
    /// this helpers returns a flag saying if its the case or not
    /// - Returns: True if forbidden color value, false otherwise
    public func isForbiddenValueColor() -> Bool {
        self == "miso-forbidden-color-value"
    }
}
