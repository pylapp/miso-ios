// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import SwiftUI

extension View {

    /// Helps to create a `Text` View with the suitable inferred type, otherwise compiler gets nuts.
    ///
    /// - Parameter description: The text to display in a particular context
    func textView(for description: TextualContent) -> Text {
        switch description {
        case let .attributed(attributedString):
            Text(attributedString)
        case let .raw(text):
            Text(text)
        }
    }
}
