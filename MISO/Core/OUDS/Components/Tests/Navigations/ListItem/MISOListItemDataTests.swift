// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

@testable import MISOComponents
import SwiftUI
import Testing

/// Tests the `overline` behavior of `MISOListItemData`: same parameter name at init for both the
/// `String` and `AttributedString` variants, disambiguated internally through `overline` /
/// `attributedOverline` storage and the `overlineContent` computed property.
struct MISOListItemDataTests {

    // MARK: - overline (String)

    @Test func `overline as String resolves to a raw overlineContent`() {
        let data = MISOListItemData(label: "Label", overline: "Overline")

        guard case let .raw(text) = data.overlineContent else {
            Issue.record("Expected .raw overlineContent")
            return
        }
        #expect(text == "Overline")
    }

    @Test func `overline as a string literal resolves to a raw overlineContent, not an attributed one`() {
        // Ensures no ambiguity at the call site: string literals convert to `.raw` through
        // `ExpressibleByStringLiteral`, never to `.rich`.
        let data = MISOListItemData(label: "Label", overline: "Overline")

        guard case .raw = data.overlineContent else {
            Issue.record("Expected .raw overlineContent")
            return
        }
    }

    // MARK: - overline (AttributedString)

    @Test func `overline as AttributedString resolves to an attributed overlineContent`() {
        let attributed = AttributedString.from(text: "Overline", foregroundColor: Color.red, font: .body)
        let data = MISOListItemData(label: "Label", overline: .rich(attributed))

        guard case let .rich(text) = data.overlineContent else {
            Issue.record("Expected .rich overlineContent")
            return
        }
        #expect(text == attributed)
    }

    @Test func `overline as AttributedString with custom view label resolves to an attributed overlineContent`() {
        let attributed = AttributedString.from(text: "Overline", foregroundColor: Color.red, font: .body)
        let data = MISOListItemData(label: Text("Label"), accessibilityLabel: "Label", overline: .rich(attributed))

        guard case let .rich(text) = data.overlineContent else {
            Issue.record("Expected .rich overlineContent")
            return
        }
        #expect(text == attributed)
    }

    @Test func `overline as AttributedString with localized key label resolves to an attributed overlineContent`() {
        let attributed = AttributedString.from(text: "Overline", foregroundColor: Color.red, font: .body)
        let data = MISOListItemData(label: .textual(.localized("Label")), overline: .rich(attributed))

        guard case let .rich(text) = data.overlineContent else {
            Issue.record("Expected .rich overlineContent")
            return
        }
        #expect(text == attributed)
    }

    // MARK: - Neither overline nor attributedOverline

    @Test func `no overline exposes a nil overlineContent`() {
        let data = MISOListItemData(label: .textual(.raw("Label")))

        #expect(data.overlineContent == nil)
    }

    // MARK: - description, extraLabel, helperText as MISOTextualContent

    @Test func `description accepts a raw String through MISOTextualContent`() {
        let data = MISOListItemData(label: .textual(.raw("Label")), description: "Hello")

        guard case let .raw(text) = data.descriptionContent else {
            Issue.record("Expected .raw descriptionContent")
            return
        }
        #expect(text == "Hello")
    }

    @Test func `description accepts an AttributedString through MISOTextualContent`() {
        let attributed = AttributedString.from(text: "Hello", foregroundColor: Color.red, font: .body)
        let data = MISOListItemData(label: "Label", description: .rich(attributed))

        guard case let .rich(text) = data.descriptionContent else {
            Issue.record("Expected .rich descriptionContent")
            return
        }
        #expect(text == attributed)
    }

    @Test func `extraLabel accepts an AttributedString through MISOTextualContent`() {
        let attributed = AttributedString.from(text: "Extra", foregroundColor: Color.red, font: .body)
        let data = MISOListItemData(label: "Label", extraLabel: .rich(attributed))

        guard case let .rich(text) = data.extraLabelContent else {
            Issue.record("Expected .rich extraLabelContent")
            return
        }
        #expect(text == attributed)
    }

    @Test func `helperText accepts an AttributedString through MISOTextualContent`() {
        let attributed = AttributedString.from(text: "Helper", foregroundColor: Color.red, font: .body)
        let data = MISOListItemData(label: .textual(.raw("Label")), helperText: .rich(attributed))

        guard case let .rich(text) = data.helperTextContent else {
            Issue.record("Expected .rich helperTextContent")
            return
        }
        #expect(text == attributed)
    }

    // MARK: - Label

    @Test func `label as rich AttributedString stores a rich labelContent`() {
        let attributed = AttributedString.from(text: "Rich label", foregroundColor: Color.red, font: .body)
        let data = MISOListItemData(label: .textual(.rich(attributed)))

        guard case let .textual(content, _) = data.labelContent,
              case let .rich(text) = content
        else {
            Issue.record("Expected .rich labelContent")
            return
        }
        #expect(text == attributed)
    }

    @Test func `label from string literal resolves to a text label with isBold false`() {
        // Uses the ExpressibleByStringLiteral conformance of MISOListItemData.Label through the
        // unified initializer taking a Label parameter.
        let label: MISOListItemData.Label = "Hello"

        guard case let .textual(textContent, isBold) = label,
              case let .raw(rawText) = textContent
        else {
            Issue.record("Expected .text label from string literal")
            return
        }
        #expect(rawText == "Hello")
        #expect(isBold == false)
    }

    @Test func `rich label stringValue returns the plain-string projection of the AttributedString`() {
        let attributed = AttributedString("Rich")
        let label: MISOListItemData.Label = .textual(.rich(attributed))

        #expect(label.stringValue == "Rich")
    }
}
