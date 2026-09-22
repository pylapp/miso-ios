// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensComponent
import MISOTokensSemantic

extension BlueCoatThemePinCodeInputComponentTokensProvider: PinCodeInputComponentTokens {
    /// Has for value token dimensions._3xlarge (= 56)
    @objc open var sizeMaxWidth: SizeSemanticToken { dimensions._3xlarge }
    /// Has for value token dimensions._large (= 44)
    @objc open var sizeMinWidth: SizeSemanticToken { dimensions._large }
    /// Has for value token spaces.columnGapMedium (= 12)
    @objc open var spaceColumnGapDigitInput: SpaceSemanticToken { spaces.columnGapMedium }
}
