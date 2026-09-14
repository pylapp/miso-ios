// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOTokensSemantic
import SwiftUI

struct AlertMessageBackgroundModifier: ViewModifier {

    // MARK: - Properties

    let status: MISOAlertStatus

    @Environment(\.theme) private var theme

    // MARK: - Body

    func body(content: Content) -> some View {
        content.background(color)
    }

    // MARK: - Helpers

    private var color: MultipleColorSemanticToken {
        switch status {
        case .neutral:
            theme.colors.surfaceSecondary
        case .accent:
            theme.colors.surfaceStatusAccentMuted
        case .positive:
            theme.colors.surfaceStatusPositiveMuted
        case .warning:
            theme.colors.surfaceStatusWarningMuted
        case .negative:
            theme.colors.surfaceStatusNegativeMuted
        case .info:
            theme.colors.surfaceStatusInfoMuted
        }
    }
}
