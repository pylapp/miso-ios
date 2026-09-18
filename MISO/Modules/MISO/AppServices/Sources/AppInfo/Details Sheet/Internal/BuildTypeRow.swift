// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import SwiftUI

/// Label–chip row for tapp details sheet ``MISOAppDetailsSheet``.
struct BuildTypeRow: View {

    /// SF Symbol name, bold label, and parenthesised detail for the current build type.
    let buildTypeInfo: (symbol: String, label: String, detail: String)

    /// Set to `true` when 8 taps are reached, triggering the confetti overlay.
    @Binding var showConfetti: Bool

    @Environment(\.theme) private var theme

    var body: some View {
        BuildTypeChip(
            buildTypeInfo: buildTypeInfo,
            showConfetti: $showConfetti)
            .frame(maxWidth: .infinity, alignment: .center)
    }
}
