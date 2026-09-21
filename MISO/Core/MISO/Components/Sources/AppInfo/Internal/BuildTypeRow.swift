// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import SwiftUI

/// Label–chip row
struct BuildTypeRow: View {

    /// SF Symbol name, bold label, and parenthesised detail for the current build type.
    let buildTypeInfo: BuildTypeInfo

    /// Flag to rise when hidden acction triggered
    @Binding var actionTriggered: Bool

    @Environment(\.theme) private var theme

    var body: some View {
        BuildTypeChip(
            buildTypeInfo: buildTypeInfo,
            actionTriggered: $actionTriggered)
            .frame(maxWidth: .infinity, alignment: .center)
    }
}
