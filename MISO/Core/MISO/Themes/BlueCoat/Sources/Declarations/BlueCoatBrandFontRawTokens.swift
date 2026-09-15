// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

/// This enum helps to add new **font raw tokens** exclusive to this ``BlueCoatTheme``
/// Such tokens are packed in a _Swift enum_ so as to gather them in one object with the suitable namespace and avoid to have just constants in nothing else
///  (i.e. publicly accessible from everywhere). More optimized than dimensionstruct_.
///
/// - Since: 1.0.0
@frozen public enum BlueCoatBrandFontRawTokens {}

/// `BlueCoat` can be considered as default theme for MISO
/// - Since: 1.0.0
public typealias DefaultBrandFontRawTokens = BlueCoatBrandFontRawTokens
