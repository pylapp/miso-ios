// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOThemesContract
import SwiftUI

struct BadgeCount: View {

    // MARK: Properties

    let configuration: BadgeCountConfiguration

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        let text = configuration.value > MISOBadgeCount.maxCount ? "+\(MISOBadgeCount.maxCount)" : "\(configuration.value)"
        switch configuration.size {
        case .medium:
            Text(text)
                .labelDefaultSmall(theme)
                .padding(.horizontal, theme.badge.spacePaddingInlineMedium)
        case .large:
            Text(text)
                .labelDefaultMedium(theme)
                .padding(.horizontal, theme.badge.spacePaddingInlineLarge)
        }
    }
}
