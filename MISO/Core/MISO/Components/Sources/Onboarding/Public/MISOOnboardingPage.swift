// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import SwiftUI

/// Wraps the element to display within the `MISOOnboardingView` View.
///
/// - Since: 1.1.0
public struct MISOOnboardingPage {

    /// Image in the page
    public let image: Image

    /// A short title
    public let title: Text

    /// A longer description about a thing
    public let description: Text

    /// Defines the content of a page for the onboarding view
    public init(image: Image, title: Text, description: Text) {
        self.image = image
        self.title = title
        self.description = description
    }
}
