// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
@testable import MISOModulesAppServices
import Testing
import UniformTypeIdentifiers

struct AppStoreUpdateServiceTests {

    @Test
    func `max count limit for release note must be 300`() {
        #expect(AppStoreUpdateService.RELEASE_NOTE_MAX_COUNT_LIMIT == 300)
    }
}
