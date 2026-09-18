// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
@testable import MISOComponentsMISO
import Testing

struct SplashScreenConfigurationTests {

    @Test
    func `waiting interval must be 1.0`() {
        #expect(SplashScreenConfiguration.WAIT_INTERVAL_IN_SECOND == 1.0)
    }

    @Test
    func `panimation duration must be 0.4`() {
        #expect(SplashScreenConfiguration.ANIM_DURATION == 0.4)
    }
}
