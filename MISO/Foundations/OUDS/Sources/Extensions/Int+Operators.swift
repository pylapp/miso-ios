// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

// swiftlint:disable missing_docs

// MARK: - Operator -- (Int)

postfix operator --

extension Int {

    @discardableResult
    public static postfix func -- (value: inout Int) -> Int {
        value -= 1
        return value
    }
}

// MARK: - Operator ++ (Int)

postfix operator ++

extension Int {

    @discardableResult
    public static postfix func ++ (value: inout Int) -> Int {
        value += 1
        return value
    }
}

// swiftlint:enable missing_docs
