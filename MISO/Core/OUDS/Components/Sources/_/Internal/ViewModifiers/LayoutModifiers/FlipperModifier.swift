// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import SwiftUI

/// A `ViewModifier` which will apply a specific flip effect on a `View`
struct FlipperModifier: ViewModifier { // 🐬

    // MARK: - Stored properties

    let flip: Bool

    // MARK: - Body

    func body(content: Content) -> some View {
        if flip {
            content.scaleEffect(x: -1, y: 1)
        } else {
            content
        }
    }
}
