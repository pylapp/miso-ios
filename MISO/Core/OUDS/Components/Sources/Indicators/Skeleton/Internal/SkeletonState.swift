// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOFoundations
import SwiftUI

// MARK: - Environment values

extension EnvironmentValues {

    /// The skeleton state indicates if the skeleton of components should be displayed, animated or not, according to its `isAnimated` flag.
    @Entry var skeletonState: SkeletonState?
}

// MARK: - Skeleton State

/// Defines if the skeleton is animated or not.
struct SkeletonState {
    let isAnimated: Bool
}

// MARK: - Skeleton State Modifier

struct SkeletonStateModifier: ViewModifier {

    // MARK: Properties

    private let isVisible: Bool
    private let isAnimated: Bool

    private var state: SkeletonState {
        .init(isAnimated: isAnimated && !reduceMotion && !lowPowerModeObserver.isLowPowerModeEnabled)
    }

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @EnvironmentObject private var lowPowerModeObserver: MISOLowPowerModeObserver

    // MARK: Initializer

    init(isVisible: Bool, isAnimated: Bool) {
        self.isVisible = isVisible
        self.isAnimated = isAnimated
    }

    // MARK: Body

    func body(content: Content) -> some View {
        content.environment(\.skeletonState, isVisible ? state : nil)
    }
}
