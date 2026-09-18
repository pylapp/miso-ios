// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOComponents
import MISOThemesContract
import SwiftUI

extension View {

    @ViewBuilder
    func settingsRow(
        _ theme: MISOTheme,
        icon: String,
        label: String,
        action: @escaping () -> Void) -> some View
    {
        HStack(spacing: theme.spaces.fixedMedium) {
            Image(systemName: icon)
                .foregroundStyle(theme.colors.actionEnabled)
                .frame(width: theme.spaces.fixedMedium, alignment: .center)
            MISOLink(text: label, indicator: .external, size: .default, isFullWidth: true, action: action)
        }
        .padding(.horizontal, theme.spaces.fixedMedium)
        .padding(.vertical, theme.spaces.fixedSmall)
        .frame(maxWidth: .infinity)
    }
}
