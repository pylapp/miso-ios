// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import SwiftUI

extension View {

    /// Modifies the current `View` to apply or not a flip effect
    ///
    /// - Parameter flip: if `true` mirrors the view, `false` does nothing
    /// - Returns some View: The current `View` with or not a flip effect
    func toFlip(_ flip: Bool) -> some View {
        modifier(FlipperModifier(flip: flip))
    }
}
