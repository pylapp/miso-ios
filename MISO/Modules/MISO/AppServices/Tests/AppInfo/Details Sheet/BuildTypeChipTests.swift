// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
@testable import MISOModulesAppServices
import Testing

struct BuildTypeChipTests {

    @Test
    func `tap count to trigger confetti easter egg must be 8`() {
        #expect(BuildTypeChip.TAP_COUNT_TO_TRIGGER_EASTER_EGG == 8)
    }
}
