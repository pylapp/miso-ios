// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOThemesContract
import SwiftUI

/// Internal decorative marker displayed below a large ``MISOHeading`` when the current theme supports it.
struct HeadingMarker: View {

    // MARK: Properties

    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection

    // MARK: Body

    var body: some View {
        if !theme.typography.headingLargeMarker {
            // Edge case during a theme switch (e.g. Orange to Sosh) that prevents crashes during redraw
            EmptyView()
        } else {
            Image(decorative: "ic_typography_heading_marker", bundle: theme.resourcesBundle)
                .renderingMode(.template)
                .toFlip(layoutDirection == .rightToLeft)
                .foregroundStyle(theme.typography.colorContentMarker)
                .padding(.top, theme.typography.spacePaddingBlockTopHeadingLargeMarker)
                .padding(.bottom, theme.typography.spacePaddingBlockBottomHeadingLargeMarker)
                .accessibilityHidden(true)
        }
    }
}
