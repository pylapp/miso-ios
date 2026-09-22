// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOComponents
import MISOThemesContract
import SwiftUI

extension View {

    // MARK: - Settings

    /// Builds a row to display a label, an icon and an actino to trigger in one line
    ///
    /// - Parameters:
    ///    - theme: To get tokens
    ///    - icon: Icon of the app
    ///    - label: A text to display
    ///    - action: Callback to trigger on tap
    @ViewBuilder
    public func settingsRow(
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

    // MARK: - Information

    /// Builds a row to display a label and a value, in one line
    ///
    /// - Parameters:
    ///    - label: The label
    ///    - value: The value
    @ViewBuilder
    public func infoRow(label: String, value: String) -> some View {
        MISOStaticListItem(data: .init(label: label),
                           trailing: .tag(MISOTag(label: value, status: .info(leading: .none))))
            .misoListItemStyle(divider: false)
            .misoListItemSize(.small)
    }
}
