// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
@testable import MISOComponentsMISO
import Testing

struct ConfettiConfigurationTests {

    @Test
    func `animation duration for confettis must be 3.0`() {
        #expect(ConfettiConfiguration.ANIMATION_DURATION == 3.0)
    }

    @Test
    func `particle count must be 120`() {
        #expect(ConfettiConfiguration.PARTICLE_COUNT == 120)
    }
}
