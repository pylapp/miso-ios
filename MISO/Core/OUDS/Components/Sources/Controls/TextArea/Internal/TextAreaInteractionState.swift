// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import Foundation

enum TextAreaInteractionState {
    case idle
    case focused
    case hover

    init(focused: Bool, hover: Bool) {
        if focused {
            self = .focused
        } else {
            if hover {
                self = .hover
            } else {
                self = .idle
            }
        }
    }
}
