// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensComponent
import MISOTokensSemantic

extension BlueCoatThemeSelectInputComponentTokensProvider: SelectInputComponentTokens {
    /// Has for value token dimensions._8xlarge (= 96)
    @objc open var sizeMinWidth: SizeSemanticToken { dimensions._8xlarge }
}
