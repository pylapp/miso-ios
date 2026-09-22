// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensComponent
import MISOTokensSemantic

extension BlueCoatThemeDividerComponentTokensProvider: DividerComponentTokens {
    /// Has for value token borders.widthThin
    @objc open var borderWidth: BorderWidthSemanticToken { borders.widthThin }
}
