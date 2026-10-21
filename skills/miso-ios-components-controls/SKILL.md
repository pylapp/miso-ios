---
name: miso-ios-components-controls
description: Usage and code examples for MISO iOS Controls components — MISOCheckbox / MISOCheckboxItem / MISOCheckboxPicker / MISOCheckboxIndeterminate, MISORadio / MISORadioItem / MISORadioPicker, MISOSwitch / MISOSwitchItem, MISOSuggestionChip / MISOFilterChip / MISOChipPicker, MISOPinCodeInput, MISOPasswordInput, MISOTextInput, MISOTextArea. Load the miso-ios-framework-usage skill first for imports, themes and image rules.
license: MIT
---

# MISO Controls components

> Prerequisite: load `miso-ios-framework-usage` first for imports, themes and image rules
> (`MISOImage`, `// swiftlint:disable:next accessibility_label_for_image`).

## Common patterns (shared across most Controls)

These patterns apply to Checkbox, Radio, Switch, TextInput, TextArea, PinCodeInput, PasswordInput unless noted otherwise.

| Pattern | Syntax |
|---|---|
| Error state | `isError: true, errorText: .raw("Message")` — `errorText` is an `MISOTextualContent` (`.raw`, `.localized`, `.rich`); prefer `.raw("…")` to a bare literal to avoid a deprecation warning |
| Rich error | `errorText: .rich(AttributedString)` |
| Plain helper | `helperText: .raw("…")` (`MISOTextArea`: `helperText: .textual("…")`) — `helperText` is an `MISOTextualContent` (`.raw`, `.localized`, `.rich`); prefer `.raw("…")` to a bare literal to avoid a deprecation warning |
| Rich helper | `helperText: .rich(AttributedString)` (`MISOTextArea`: `helperText: .textual(.rich(AttributedString))`) |
| Error status (inputs) | `status: .textualError(message: "…")` — message is an `MISOTextualContent` |
| Rich error status | `status: .textualError(message: .rich(AttributedString))` |
| Read-only | `isReadOnly: true` |
| Disabled | `.disabled(true)` — never combine with `isError` or `isReadOnly` |

> `MISOSwitchItem`, `MISOCheckboxItem`, `MISOCheckboxItemIndeterminate` and `MISORadioItem` `errorText` as `String` / `AttributedString` is **deprecated** since v3.2.0, use `MISOTextualContent`.
> **Literal pitfall**: a bare `errorText: "abc"` may select a deprecated initializer (warning) because `AttributedString` is expressible by a string literal. Write `errorText: .raw("abc")`.

> **Forbidden combinations** (fatal error at runtime): `isError` + `isReadOnly`, `isError` + `.disabled`, `isReadOnly` + `.disabled`

---

## Checkbox

```swift
MISOCheckbox(isOn: $isOn, accessibilityLabel: "Label")
MISOCheckboxIndeterminate(selection: $selection, accessibilityLabel: "Label")
MISOCheckboxItem("Label", isOn: $isOn)
MISOCheckboxItem("Label", isOn: $isOn, description: "Helper",
                 image: MISOImage(asset: Image(decorative: "ic")))
MISOCheckboxItem("Label", isOn: $isOn,
                 image: MISOImage(asset: Image(decorative: "ic")), isReversed: true)
// Raw (non-tinted) image:
MISOCheckboxItem("Label", isOn: $isOn,
                 image: MISOImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
// Flip icon for RTL:
MISOCheckboxItem("Label", isOn: $isOn,
                 image: MISOImage(asset: Image(systemName: "figure.handball"),
                                 flipped: layoutDirection == .rightToLeft))
// LocalizedStringKey:
MISOCheckboxItem(LocalizedStringKey("agree_terms"), bundle: Bundle.module, isOn: $isOn,
                 image: MISOImage(asset: Image(decorative: "ic")))
// Indeterminate (three states) — also accepts LocalizedStringKey and an MISOTextualContent errorText:
MISOCheckboxItemIndeterminate("Label", selection: $selection,
                               image: MISOImage(asset: Image(decorative: "ic")))
MISOCheckboxItemIndeterminate(LocalizedStringKey("select_all"), bundle: Bundle.module,
                               selection: $selection)
// Error text: raw, localized or rich MISOTextualContent
MISOCheckboxItem("Label", isOn: $isOn, isError: true, errorText: .rich(AttributedString(…)))
// Error / helper / disabled → see "Common patterns" above
```

> Parameter order: `(_ label:, isOn:, description:, image:, isReversed:, isError:, errorText:, isReadOnly:, hasDivider:, constrainedMaxWidth:, action:)`

```swift
// Picker — image is MISOImage?
MISOCheckboxPicker(selections: $selections, checkboxes: [
    .init(tag: "a", label: "Option A"),
    .init(tag: "b", label: "Option B", description: "Details", isReversed: true),
    .init(tag: "c", label: "Option C", image: MISOImage(asset: Image(systemName: "flame"))),
    .init(tag: "d", label: "Option D",
          image: MISOImage(asset: Image(decorative: "il_brand"), renderingMode: .original)),
])
MISOCheckboxPicker(selections: $selections, checkboxes: data,
                   placement: .verticalRooted("All options", .textAndCount))
MISOCheckboxPicker(selections: $selections, checkboxes: data,
                   isReversed: true, placement: .horizontal(true))
```

---

## Radio Button

```swift
MISORadio(isOn: $isOn, accessibilityLabel: "Label")
MISORadioItem("Label", isOn: $isOn)
MISORadioItem("Label", isOn: $isOn, image: MISOImage(asset: Image(decorative: "ic")))
// Raw (non-tinted) image:
MISORadioItem("Label", isOn: $isOn,
              image: MISOImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
// Flip icon for RTL:
MISORadioItem("Label", isOn: $isOn,
              image: MISOImage(asset: Image(systemName: "chevron.right"),
                              flipped: layoutDirection == .rightToLeft))
// LocalizedStringKey:
MISORadioItem(LocalizedStringKey("option_label"), bundle: Bundle.module, isOn: $isOn,
              image: MISOImage(asset: Image(decorative: "ic")))
// Error text: raw, localized or rich MISOTextualContent
MISORadioItem("Label", isOn: $isOn, isError: true, errorText: .rich(AttributedString(…)))
// Error / helper / disabled → see "Common patterns" above
MISORadioPicker(selection: $selection,
                radios: [
                    .init(tag: "a", label: "Option A"),
                    .init(tag: "b", label: "Option B",
                          image: MISOImage(asset: Image(systemName: "flame"))),
                    .init(tag: "c", label: "Option C",
                          image: MISOImage(asset: Image(decorative: "il_brand"),
                                         renderingMode: .original)),
                ],
                placement: .vertical)
```

---

## Switch

```swift
MISOSwitch(isOn: $isOn, accessibilityLabel: "Label")
MISOSwitchItem("Label", isOn: $isOn)
MISOSwitchItem("Label", isOn: $isOn,
               image: MISOImage(asset: Image(decorative: "ic")))
// Raw (non-tinted) image:
MISOSwitchItem("Label", isOn: $isOn,
               image: MISOImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
// Flip icon for RTL:
MISOSwitchItem("Label", isOn: $isOn,
               image: MISOImage(asset: Image(systemName: "figure.handball"),
                               flipped: layoutDirection == .rightToLeft))
// LocalizedStringKey:
MISOSwitchItem(LocalizedStringKey("wifi_setting"), bundle: Bundle.module, isOn: $isOn,
               image: MISOImage(asset: Image(decorative: "ic")))
// Error text: raw, localized or rich MISOTextualContent
MISOSwitchItem("Label", isOn: $isOn, isError: true, errorText: .rich(AttributedString(…)))
// Error / helper / disabled → see "Common patterns" above
```

---

## Pin Code Input

Available lengths: `.four`, `.six` (default), `.eight`.

```swift
MISOPinCodeInput($value)
MISOPinCodeInput($value, length: .four, autofocus: true)
MISOPinCodeInput($value, helperText: .raw("Enter your PIN"))
MISOPinCodeInput($value, helperText: .localized("pin_helper", bundle: Bundle.module))
MISOPinCodeInput($value, helperText: .rich(AttributedString(…)))
// Error status: .textualError(message: MISOTextualContent), raw (literal), localized or rich
MISOPinCodeInput($value, status: .textualError(message: .rich(AttributedString(…))))
```

> `MISOPinCodeInput` `helperText` as `String` / `AttributedString` / `LocalizedStringKey` (`helperText key:`) is **deprecated** since v3.2.0, use `MISOTextualContent`.
> `Status.error(message:)` and `Status.richError(message:)` are **deprecated** too, use `Status.textualError(message:)`.
> **Literal pitfall**: a bare `helperText: "abc"` may select a deprecated initializer (warning). Write `helperText: .raw("abc")`.
> A literal in `status: .textualError(message: "abc")` is fine.

---

## Password Input

> `status` is of type `MISOTextInput.Status` (shared with `MISOTextInput`).

```swift
MISOPasswordInput(label: "Password", password: $password, isHiddenPassword: $isHidden)
MISOPasswordInput(label: "Password", password: $password, isHiddenPassword: $isHidden,
                  placeholder: "Min. 8 chars", prefix: "🔑", lockIcon: true)
// Helper text: raw (string literal), localized or rich MISOTextualContent
MISOPasswordInput(label: "Password", password: $password, helperText: .raw("8 characters minimum"))
MISOPasswordInput(label: "Password", password: $password, helperText: .rich(AttributedString(…)))
// Error status: .textualError(message: MISOTextualContent), raw (literal), localized or rich
MISOPasswordInput(label: "Password", password: $password, status: .textualError(message: "Too weak"))
```

> `MISOPasswordInput` `helperText` as `String` / `AttributedString` is **deprecated** since v3.2.0, use `MISOTextualContent`.
> `MISOTextInput.Status.error(message:)` and `.richError(message:)` are **deprecated** too, use `.textualError(message:)`.
> **Literal pitfall**: a bare `helperText: "abc"` may select a deprecated initializer (warning). Write `helperText: .raw("abc")`.

---

## Chips

```swift
MISOSuggestionChip(text: "Label") {}
MISOSuggestionChip(image: MISOImage(asset: Image("ic")), text: "Label") {}
MISOSuggestionChip(image: MISOImage(asset: Image("ic"), renderingMode: .original), text: "Label") {} // raw image (not tinted)
MISOSuggestionChip(image: MISOImage(asset: Image("ic")), accessibilityLabel: "Label") {}
MISOSuggestionChip(image: MISOImage(asset: Image("ic"), renderingMode: .original), accessibilityLabel: "Label") {} // raw image (not tinted)
MISOFilterChip(text: "Label") {}
MISOFilterChip(image: MISOImage(asset: Image("ic")), text: "Label") {}
MISOFilterChip(image: MISOImage(asset: Image("ic"), renderingMode: .original), text: "Label") {} // raw image (not tinted)
MISOFilterChip(image: MISOImage(asset: Image("ic")), accessibilityLabel: "Label") {}
MISOFilterChip(image: MISOImage(asset: Image("ic"), renderingMode: .original), accessibilityLabel: "Label") {} // raw image (not tinted)
MISOChipPicker(title: "Title", selection: $selection, chips: [
    .init(tag: .value1, layout: .textAndIcon("Label", image: MISOImage(asset: Image("ic")))),
    .init(tag: .value2, layout: .textAndIcon("Brand", image: MISOImage(asset: Image("ic_brand"), renderingMode: .original))), // raw image
    .init(tag: .value3, layout: .icon(MISOImage(asset: Image("ic")), accessibilityLabel: "Label")),
    .init(tag: .value4, layout: .icon(MISOImage(asset: Image("ic_brand"), renderingMode: .original), accessibilityLabel: "Brand")), // raw image
])
```

---

## Text Input

```swift
MISOTextInput(label: "Label", text: $text)
MISOTextInput(label: "Label", text: $text, placeholder: "…", prefix: "Pre", suffix: "Suf")
MISOTextInput(label: "Label", text: $text, leadingImage: MISOImage(asset: Image("ic")))
MISOTextInput(label: "Label", text: $text,
              leadingImage: MISOImage(asset: Image("ic"), renderingMode: .original)) // raw image (not tinted)
MISOTextInput(label: "Label", text: $text,
              leadingImage: MISOImage(asset: Image("ic"), flipped: layoutDirection == .rightToLeft)) // flip for RTL
MISOTextInput(label: "Label", text: $text,
              trailingAction: .init(image: MISOImage(asset: Image("ic")), actionHint: "Hint") {})
MISOTextInput(label: "Label", text: $text,
              trailingAction: .init(image: MISOImage(asset: Image("ic"), renderingMode: .original),
                                    actionHint: "Hint") {}) // raw image
// Helper text: raw (string literal), localized or rich MISOTextualContent
MISOTextInput(label: "Label", text: $text, helperText: .raw("Helper"))
MISOTextInput(label: "Label", text: $text, helperText: .rich(AttributedString(…)))
// Error status: .textualError(message: MISOTextualContent), raw (literal), localized or rich
MISOTextInput(label: "Label", text: $text, status: .textualError(message: .localized("err", bundle: Bundle.module)))
```

> `MISOTextInput` `helperText` as `String` / `AttributedString` is **deprecated** since v3.2.0, use `MISOTextualContent`.
> `MISOTextInput.Status.error(message:)` and `.richError(message:)` are **deprecated** too, use `.textualError(message:)`.
> **Literal pitfall**: a bare `helperText: "abc"` may select a deprecated initializer (warning). Write `helperText: .raw("abc")`.

---

## Text Area

`helperText` type: `.textual(MISOTextualContent)` (raw string literal, `.raw`, `.localized` or `.rich`) | `.charactersMaxCount(UInt16)`

```swift
MISOTextArea(label: "Label", text: $text)
MISOTextArea(label: "Label", text: $text, placeholder: "Describe…")
MISOTextArea(label: "Label", text: $text, helperText: .textual("Max 500 chars."))
MISOTextArea(label: "Label", text: $text, helperText: .textual(.rich(AttributedString(…))))
MISOTextArea(label: "Label", text: $text, helperText: .charactersMaxCount(500))
MISOTextArea(label: "Label", text: $text,
             helperLink: .init(text: "Learn more") { openUrl(url) })
// Fixed height — no vertical growth, scroll from first overflow line
MISOTextArea(label: "Label", text: $text, constrainedMaxHeight: true)
// Error status: .textualError(message: MISOTextualContent), raw (literal), localized or rich
MISOTextArea(label: "Label", text: $text, status: .textualError(message: .rich(AttributedString(…))))
```

> `MISOTextArea.HelperText.plain(_:)` and `.rich(_:)` are **deprecated** since v3.2.0, use `.textual(_:)` with an `MISOTextualContent`.
> `MISOTextArea.Status.error(message:)` and `.richError(message:)` are **deprecated** too, use `.textualError(message:)`.

> Height is controlled by two component tokens on `theme.textArea`:
> - `sizeMinHeightInput` (72 pt by default) — minimum height, always applied
> - `sizeMaxHeightInput` (240 pt by default) — maximum height before scroll (used when `constrainedMaxHeight: false`, the default)
>
> When `constrainedMaxHeight: true`, `maxHeight` is capped to `sizeMinHeightInput`, keeping the component at a fixed compact size.
