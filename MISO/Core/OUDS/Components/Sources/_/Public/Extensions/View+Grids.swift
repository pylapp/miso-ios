// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import SwiftUI

extension View {

    /// Adds a margin amount to specific edges of this view.
    /// Indicate the edges to margin by naming either a single value from `Edge/Set`,
    /// or by specifying an `OptionSet`.
    ///
    /// ```swift
    ///   MyView().gridMargin(.horizontal)
    /// ```
    ///
    /// - Parameter edges: The set of edges to add margin for this view (default is  `.all`).
    /// - Returns: A view that's margin are added by the specified amount on the specified edges.
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func gridMargin(_ edges: Edge.Set = .all) -> some View {
        modifier(GridMarginModifier(edges: edges))
    }
}
