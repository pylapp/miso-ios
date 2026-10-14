// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import SwiftUI

struct SkeletonModifier<S: SwiftUI.Shape>: ViewModifier {

    let securityMargin: Bool
    let shape: S

    @Environment(\.skeletonState) private var skeletonState

    func body(content: Content) -> some View {
        if skeletonState == nil {
            content
        } else {
            content
                .hidden()
                .overlay {
                    GeometryReader { geometry in
                        MISOSkeleton(securityMargin: securityMargin, shape: shape)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                    }
                }
                .clipShape(shape)
        }
    }
}
