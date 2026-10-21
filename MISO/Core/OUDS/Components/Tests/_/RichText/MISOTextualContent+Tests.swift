// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import Foundation
@testable import MISOComponents
import Testing

// MARK: - MISOTextualContent Tests

struct MISOTextualContentTests {

    // MARK: - rawValue — .raw case

    @Test func `rawValue of raw case returns the underlying string`() {
        let content = MISOTextualContent.raw("hello")
        #expect(content.rawValue == "hello")
    }

    @Test func `rawValue of raw case with empty string returns empty string`() {
        let content = MISOTextualContent.raw("")
        #expect(content.rawValue.isEmpty)
    }

    @Test func `rawValue of raw case preserves whitespace-only string`() {
        // A string made of spaces is not empty — rawValue must return it as is.
        let content = MISOTextualContent.raw("   ")
        #expect(content.rawValue == "   ")
    }

    @Test func `rawValue of raw case preserves unicode characters`() {
        let content = MISOTextualContent.raw("éàü 日本語 🍊")
        #expect(content.rawValue == "éàü 日本語 🍊")
    }

    // MARK: - rawValue — .attributed case

    @Test func `rawValue of attributed case returns plain characters`() {
        let content = MISOTextualContent.rich(AttributedString("world"))
        #expect(content.rawValue == "world")
    }

    @Test func `rawValue of attributed case with empty attributed string returns empty string`() {
        let content = MISOTextualContent.rich(AttributedString(""))
        #expect(content.rawValue.isEmpty)
    }

    @Test func `rawValue of attributed case from valid markdown returns text without markup`() {
        // AttributedString(markdown:) strips Markdown syntax; only the visible text remains.
        // swiftlint:disable:next force_try
        let attributed = try! AttributedString(markdown: "**bold** and _italic_")
        let content = MISOTextualContent.rich(attributed)
        #expect(content.rawValue == "bold and italic")
    }

    @Test func `rawValue of attributed case preserves unicode characters`() {
        let content = MISOTextualContent.rich(AttributedString("éàü 日本語 🍊"))
        #expect(content.rawValue == "éàü 日本語 🍊")
    }

    // MARK: - isEmpty — .raw case

    @Test func `isEmpty of raw case is true for empty string`() {
        let content = MISOTextualContent.raw("")
        #expect(content.isEmpty)
    }

    @Test func `isEmpty of raw case is false for non-empty string`() {
        let content = MISOTextualContent.raw("x")
        #expect(!content.isEmpty)
    }

    @Test func `isEmpty of raw case is false for whitespace-only string`() {
        // A string of spaces has characters, so isEmpty must be false.
        let content = MISOTextualContent.raw("   ")
        #expect(!content.isEmpty)
    }

    // MARK: - isEmpty — .attributed case

    @Test func `isEmpty of attributed case is true for empty attributed string`() {
        let content = MISOTextualContent.rich(AttributedString(""))
        #expect(content.isEmpty)
    }

    @Test func `isEmpty of attributed case is false for non-empty attributed string`() {
        let content = MISOTextualContent.rich(AttributedString("x"))
        #expect(!content.isEmpty)
    }

    // MARK: - AttributedString.isEmpty extension

    // swiftlint:disable identifier_name
    @Test func `AttributedString isEmpty is true for empty attributed string`() {
        let attributed = AttributedString("")
        #expect(attributed.isEmpty)
    }

    @Test func `AttributedString isEmpty is false for non-empty attributed string`() {
        let attributed = AttributedString("a")
        #expect(!attributed.isEmpty)
    }
    // swiftlint:enable identifier_name
}
