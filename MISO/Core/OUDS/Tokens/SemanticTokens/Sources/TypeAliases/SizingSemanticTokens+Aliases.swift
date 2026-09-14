// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOTokensRaw

/// Basically a size semantic token, used for width and height values, is a _ raw token,
/// it has the same final type, to keep grammar clean and clear with design system grammar.
public typealias SizeSemanticToken = DimensionRawToken
