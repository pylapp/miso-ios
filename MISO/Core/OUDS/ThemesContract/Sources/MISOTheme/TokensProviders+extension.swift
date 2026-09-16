// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOFoundations

#if DEBUG
extension TokensProvider {

    // swiftlint:disable line_length
    /// If `count` is greater than 1, displays a warning message in the standard output
    /// saying the tokens provider with name `providerName` is instanciated more than once and should not be
    /// - Parameters:
    ///    - count: Supposed to be instance count
    ///    - providerName: Supposed to be name of the tokens provider
    public func checkInstances(count: Int, for providerName: String) {
        guard count > 1 else { return }
        ML.warning("🧮 There are \(count) instances of \(providerName), it should be unique! If this warning does not occur during tests, feel free to submit a bug: https://github.com/Orange-OpenSource/ouds-ios/issues")
    }
    // swiftlint:enable line_length
}
#endif
