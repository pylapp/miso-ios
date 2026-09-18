// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

#if os(iOS)
import SafariServices
import SwiftUI

// MARK: - Safari in-app browser

/// Thin `UIViewControllerRepresentable` wrapper around `SFSafariViewController`.
///
/// - Since: 1.1.0
public struct SafariView: UIViewControllerRepresentable {

    let url: URL

    public init(url: URL) {
        self.url = url
    }

    public func makeUIViewController(context: Context) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }

    public func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {}
}

// MARK: - Identifiable URL

/// Wraps a `URL` to make it `Identifiable`, enabling use with `.sheet(item:)`.
///
/// - Since: 1.1.0
public struct IdentifiableURL: Identifiable {

    public let url: URL
    public let id = UUID()

    public init(_ url: URL) {
        self.url = url
    }
}
#endif
