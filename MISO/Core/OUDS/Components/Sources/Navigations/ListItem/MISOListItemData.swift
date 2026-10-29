// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import SwiftUI

/// Represents the main content displayed within a list item component such as
/// ``MISOStaticListItem`` or ``MISONavigationListItem``.
///
/// ``MISOListItemData`` groups all the text-based information that a list item can display:
/// a mandatory label (an ``MISOTextualContent`` or a custom `View`) and optional
/// description, overline, extra label and helper text. Every textual field accepts a raw `String`,
/// a localized string or an `AttributedString` through ``MISOTextualContent``, plus optional slots.
///
/// ## Code samples
///
/// ```swift
///     // Minimal: label only (string literal is implicitly converted to .textual(.raw))
///     let data = MISOListItemData(label: .textual("Label"))
///
///     // Label with bold style
///     let data = MISOListItemData(label: .textual("Label", isBold: true))
///
///     // Localized label
///     let data = MISOListItemData(label: .textual(.localized("label.key")))
///
///     // Styled rich label (user-controlled font, color, markdown…)
///     let data = MISOListItemData(
///         label: .textual(.rich(AttributedString.from(text: "Label",
///                                                         foregroundColor: .orange,
///                                                         font: .headline)))
///     )
///
///     // Custom view as label with accessibility label
///     let data = MISOListItemData(
///         label: HStack {
///             Image(systemName: "star.fill")
///             Text("Custom Label")
///         },
///         accessibilityLabel: "Favorite Custom Label"
///     )
///
///     // Full content with text label
///     let data = MISOListItemData(
///         label: "Label",
///         hasBoldLabel: false,
///         description: "Description",
///         overline: "Overline",
///         extraLabel: "Extra Label",
///         helperText: "Helper text providing guidance"
///     )
///
///     // Full content with custom view label
///     let data = MISOListItemData(
///         label: "Label",
///         description: "Description",
///         overline: "Overline",
///         extraLabel: "Extra Label",
///         helperText: "Helper text providing guidance"
///     )
///
///     // Overline as a user-styled rich text (AttributedString)
///     // Same "overline" parameter name as the String variant, disambiguated by the value's type.
///     let data = MISOListItemData(
///         label: "Label",
///         description: .rich(myStyledDescription),
///         overline: "Plain overline",
///         helperText: .rich(myStyledHelper)
///     )
///
///     // Usage with a static list item
///     MISOStaticListItem(data: data)
///
///     // Usage with a navigation list item
///     MISONavigationListItem(data: data) {
///         // Navigate to next screen
///     }
///
///     // With slot (displayed under texts, before helper text)
///     let dataWithSlot = MISOListItemData(
///         label: "Label",
///         textSlot: MISOListItemData.Slot { Text("Additional content") },
///         helperText: "Helper text"
///     )
///
///     // With text slot and bottom slot (bottom slot displayed under text slot, before helper text)
///     let dataWithBothSlots = MISOListItemData(
///         label: "Label",
///         textSlot: MISOListItemData.Slot { Text("Slot content") },
///         bottomSlot: MISOListItemData.Slot { Text("Bottom content") },
///         helperText: "Helper text"
///     )
/// ```
///
/// ## Custom view label
///
/// When providing a custom view as label:
/// - Bold styling is not applicable; all styling is controlled by the provided view.
/// - You must provide an `accessibilityLabel` parameter so that Voice Over can vocalize the label.
///   This `accessibilityLabel` is used in the combined accessibility label of the list item text container.
/// - You must also check the accessibility of your custom views (navigation with switch control and full keyboard access, dynamic types, contrast ratios)
///
/// ## Small size behavior
///
/// When the list item is displayed in small size (via the `.misoListItemSize(.small)` modifier),
/// the `overline` and `extraLabel` properties are **automatically hidden** to ensure a compact layout.
/// Only the `label`, `description`, and `helperText` remain visible.
///
/// The `bottomSlot` is also **automatically hidden**, but the `textSlot` remains displayed.
///
/// ```swift
///     // overline, extraLabel and bottomSlot will not be displayed
///     MISOStaticListItem(data: MISOListItemData(
///         label: "Label",
///         overline: "Hidden in small",
///         extraLabel: "Also hidden in small"
///     ))
///     .misoListItemSize(.small)
/// ```
///
/// - Since: OUDS 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct MISOListItemData {

    // MARK: - Slot

    /// Represents a custom view slot within a list item.
    ///
    /// ```swift
    ///     // Call to give to any property for slots
    ///     MISOListItemData.Slot { Text("Some text") }
    /// ```
    ///
    /// - Since: OUDS 3.0.0
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    @frozen public struct Slot {
        let view: AnyView

        /// Defines as `AnyView`  the result of `content` to be added in the `list item`  component
        public init(@ViewBuilder content: () -> some View) {
            view = AnyView(content())
        }
    }

    // MARK: - Label

    /// Represents the content of a label within a list item.
    ///
    /// The label can be either a textual content (raw string, localized string or user-styled
    /// `AttributedString`) or an arbitrary SwiftUI view.
    ///
    /// ## Cases
    ///
    /// - **`.textual(MISOTextualContent, isBold: Bool)`**: A raw, localized or rich text used as the label.
    ///   The `isBold` parameter controls whether the text is rendered with a bold font weight.
    ///   For `.rich`, the styling (font, color, markdown…) is entirely controlled by the caller.
    /// - **`.text(String, isBold: Bool)`**: Deprecated since 3.2.0, use `.textual` instead.
    /// - **`.custom(AnyView, accessibilityLabel: String)`**: A custom SwiftUI view used as the label,
    ///   together with an accessibility label used for Voice Over vocalization.
    ///   When using a custom view, the bold styling is not applicable since it is entirely
    ///   controlled by the provided view.
    ///
    /// ## String literal convenience
    ///
    /// `Label` conforms to `ExpressibleByStringLiteral`, so a plain string literal is implicitly
    /// converted to `.textual(.raw(literal), isBold: false)` wherever a `Label` is expected.
    ///
    /// ```swift
    ///     let data = MISOListItemData(label: .textual("Hello")) // same as .textual(.raw("Hello"), isBold: false)
    /// ```
    ///
    /// ## Accessibility
    ///
    /// When using `.custom`, the ``stringValue`` property returns the provided `accessibilityLabel`.
    /// For `.textual`, it returns the plain-string projection of the content.
    /// This value is used by the text container to build the combined accessibility label
    /// for the list item text parts, ensuring Voice Over can vocalize the label even when it is
    /// an arbitrary view.
    ///
    /// - Since: OUDS 3.0.0
    @frozen public enum Label: ExpressibleByStringLiteral {
        /// A plain text string label.
        ///
        /// - Parameters:
        ///   - text: The text string to display as the label.
        ///   - isBold: When `true`, the label is rendered with a bold font weight.
        @available(*, deprecated, message: "Use case .textual(_:MISOTextualContent) instead. See MIGRATION.md v1.2.0.")
        case text(_: String, isBold: Bool = false)

        /// A text, which can be defined from a raw string, a localized string or attributed string
        ///
        /// - Since: 3.2.0
        case textual(_: MISOTextualContent, isBold: Bool = false) // TODO: v4 - When .case text removed, rename from "textual" to "text"

        /// A custom SwiftUI view used as the label, with an accessibility label for Voice Over.
        ///
        /// - Parameters:
        ///   - view: The custom SwiftUI view to render as the label.
        ///   - accessibilityLabel: A text used for Voice Over vocalization of the label.
        case custom(_ view: AnyView, accessibilityLabel: String)

        /// Creates a ``textual(_:isBold:)`` label from a string literal (`isBold: false`).
        public init(stringLiteral value: String) {
            self = .textual(.raw(value), isBold: false)
        }

        /// Returns the string value for accessibility purposes.
        /// For `.text` (deprecated), returns the text itself.
        /// For `.textual`, returns the plain-string projection.
        /// For `.custom`, returns the provided `accessibilityLabel`.
        public var stringValue: String {
            switch self {
            case let .text(string, _):
                string
            case let .textual(content, _):
                content.rawValue
            case let .custom(_, accessibilityLabel):
                accessibilityLabel
            }
        }
    }

    // MARK: - Properties

    /// The primary content of the list item. Can be a plain text, a styled rich text or a custom view.
    /// See ``MISOListItemData/Label`` for available options.
    let labelContent: Label

    /// An optional secondary text displayed below the label.
    /// Accepts either a plain `String` or a styled `AttributedString` through ``MISOTextualContent``.
    let descriptionContent: MISOTextualContent?

    /// An optional small text displayed above the label, as a user-styled `AttributedString`
    /// (font, color, etc. fully controlled by the caller).
    /// **Ignored when the list item size is `.small`.**
    ///
    /// Set when the `overline: AttributedString` initializer parameter is used. Mutually exclusive
    /// with ``overline``: only settable through the dedicated initializers taking an
    /// `overline: AttributedString` parameter.
    ///
    /// ```swift
    ///     MISOListItemData(
    ///         label: "Label",
    ///         overline: .from(text: "Overline", foregroundColor: someColor, font: someFont)
    ///     )
    /// ```
    let overlineContent: MISOTextualContent?

    /// An optional additional text displayed below the description.
    /// Accepts either a plain `String` or a styled `AttributedString` through ``MISOTextualContent``.
    /// **Ignored when the list item size is `.small`.**
    let extraLabelContent: MISOTextualContent?

    /// An optional supporting text displayed below the list item row, outside the main content area.
    /// Accepts either a plain `String` or a styled `AttributedString` through ``MISOTextualContent``.
    let helperTextContent: MISOTextualContent?

    /// An optional custom view displayed under the texts (overline, label, extra label, description)
    /// but before the helper text.
    ///
    /// Use this slot to insert additional content between the main text content and the helper text.
    let textSlot: Slot?

    /// An optional custom view displayed under the main content (including `slot`) and before the helper text.
    ///
    /// This slot is positioned below the main row content and above the helper text.
    /// It is useful for displaying additional information that should be visually separated from the main texts.
    ///
    /// **Note:** Not displayed in small size (via ``SwiftUICore/View/misoListItemSize(_:)``).
    let bottomSlot: Slot?

    // MARK: - Initializers (unified, v3.2)

    /// Creates a new list item data model with a label and optional textual fields.
    ///
    /// Every optional textual field (`description`, `overline`, `extraLabel`, `helperText`) accepts
    /// either a plain `String` or a styled `AttributedString` through ``MISOTextualContent``. A plain
    /// string literal is automatically converted to ``MISOTextualContent/raw(_:)`` thanks to
    /// `ExpressibleByStringLiteral`.
    ///
    /// When the label is a bare string literal and no textual field is given (or only `textSlot` / `bottomSlot`), prefer
    /// `label: .textual("…")` so the compiler selects this initializer without any deprecation warning.
    ///
    /// - Parameters:
    ///   - label: The primary content of the list item (plain text, rich text or custom view).
    ///   - description: An optional secondary text displayed below the label. Defaults to `nil`.
    ///   - overline: An optional text displayed above the label. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - extraLabel: An optional additional text displayed below the description. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - helperText: An optional supporting text displayed below the list item row. Defaults to `nil`.
    ///   - textSlot: An optional custom view displayed under the texts but before the helper text. Defaults to `nil`.
    ///   - bottomSlot: An optional custom view displayed under the main content and before the helper text. Defaults to `nil`.
    ///
    /// - Since: 3.2.0
    public init(
        label: Label,
        description: MISOTextualContent? = nil,
        overline: MISOTextualContent? = nil,
        extraLabel: MISOTextualContent? = nil,
        helperText: MISOTextualContent? = nil,
        textSlot: Slot? = nil,
        bottomSlot: Slot? = nil)
    {
        labelContent = label
        descriptionContent = description
        overlineContent = overline
        extraLabelContent = extraLabel
        helperTextContent = helperText
        self.textSlot = textSlot
        self.bottomSlot = bottomSlot
    }

    /// Creates a new list item data model with a custom SwiftUI view as label and optional textual fields.
    ///
    /// Every optional textual field (`description`, `overline`, `extraLabel`, `helperText`) accepts
    /// either a plain `String` or a styled `AttributedString` through ``MISOTextualContent``.
    ///
    /// For a raw `overline`, prefer `.raw("…")` to a bare string literal so the compiler selects this initializer
    /// without any deprecation warning.
    ///
    /// - Parameters:
    ///   - label: A custom SwiftUI view to use as the primary label of the list item.
    ///   - accessibilityLabel: A text used for Voice Over vocalization of the custom label.
    ///     This value is used to build the combined accessibility label of the list item text container.
    ///   - description: An optional secondary text displayed below the label. Defaults to `nil`.
    ///   - overline: An optional text displayed above the label. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - extraLabel: An optional additional text displayed below the description. Defaults to `nil`.
    ///     **Ignored when the list item size is `.small`.**
    ///   - helperText: An optional supporting text displayed below the list item row. Defaults to `nil`.
    ///   - textSlot: An optional custom view displayed under the texts but before the helper text. Defaults to `nil`.
    ///   - bottomSlot: An optional custom view displayed under the main content and before the helper text. Defaults to `nil`.
    ///
    /// - Since: 3.2.0
    public init(
        label: some View,
        accessibilityLabel: String,
        description: MISOTextualContent? = nil,
        overline: MISOTextualContent? = nil,
        extraLabel: MISOTextualContent? = nil,
        helperText: MISOTextualContent? = nil,
        textSlot: Slot? = nil,
        bottomSlot: Slot? = nil)
    {
        self.init(
            label: .custom(AnyView(label), accessibilityLabel: accessibilityLabel),
            description: description,
            overline: overline,
            extraLabel: extraLabel,
            helperText: helperText,
            textSlot: textSlot,
            bottomSlot: bottomSlot)
    }
}
