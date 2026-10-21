---
name: miso-ios-guide-migration
description: Use when the user wants to migrate MISO iOS code from v1.1.0 to v1.2.0, or when deprecated MISO text APIs (String / AttributedString / LocalizedStringKey initializers, `.error(message:)`, `.richError(message:)`, `Label.text`, `HelperText.plain`) are detected in the codebase
license: MIT
---

# Skill: miso-ios-guide-migration

Migration guide from **v1.1.0** to **v1.2.0** (upcoming). For full before/after examples, refer to `MIGRATION.md` in the project root.

Load `miso-ios-framework-usage` first, then the matching `miso-ios-components-*` skill if needed.

## Summary

**Impact: low.** All former call sites keep compiling; only deprecation warnings appear.
Every textual field of several components now accepts a `MISOTextualContent`: raw, localized or rich.

```swift
@frozen
public enum MISOTextualContent: @unchecked Sendable, ExpressibleByStringLiteral {
    case raw(String)
    case localized(_: LocalizedStringKey, tableName: String? = nil, bundle: Bundle = .main)
    case rich(AttributedString)
}
```

A string literal is implicitly converted to `.raw(…)`. The type is now `public`.

| Component | Deprecated | Replacement |
|---|---|---|
| `MISOListItemData` | 6 initializers (`String` / `AttributedString` / `LocalizedStringKey` × overline) | `init(label: Label, …)` and `init(label: some View, accessibilityLabel:, …)` with `MISOTextualContent?` fields |
| `MISOListItemData.Label` | `.text(_:isBold:)` | `.textual(_:isBold:)` |
| `MISOBulletList.Item` | `String` / `AttributedString` / `LocalizedStringKey` initializers | `init(_: MISOTextualContent, …)` |
| `MISOAlertMessage` | 8 initializers (`description` / `bulletList` as `String` or `AttributedString`) | 2 initializers (`label:` / `_ key:`) with `description: MISOTextualContent?`, `bulletList: [MISOTextualContent]` |
| `MISOSwitchItem`, `MISOCheckboxItem`, `MISORadioItem` | 4 initializers each (`errorText` as `String?` / `AttributedString`) | 2 initializers each with `errorText: MISOTextualContent?` |
| `MISOCheckboxItemIndeterminate` | 2 initializers with `errorText: String?` | 2 initializers with `errorText: MISOTextualContent?` |
| `MISOPinCodeInput` | 3 initializers (`helperText` as `String` / `AttributedString` / `LocalizedStringKey`) | 1 initializer with `helperText: MISOTextualContent?` |
| `MISOTextInput` | 4 initializers (`helperText` as `String?` / `AttributedString`) | 2 initializers with `helperText: MISOTextualContent?` |
| `MISOPasswordInput` | 4 initializers (`helperText` as `String?` / `AttributedString`) | 2 initializers with `helperText: MISOTextualContent?` |
| `MISOTextArea` | `HelperText.plain` / `.rich` | `HelperText.textual(_:)` |
| `MISOTextInput.Status` (also used by `MISOPasswordInput`), `MISOPinCodeInput.Status`, `MISOTextArea.Status` | `.error(message:)` / `.richError(message:)` | `.textualError(message: MISOTextualContent)` |

Prerequisite: the project must already use v1.1.0.

`.textual` will be renamed `.text` and `.textualError` renamed `.error` once the deprecated API is removed (no major version is planned for now).

## Migration workflow

1. **Detect** — grep for deprecated usages (commands below).
2. **Transform** — apply the rules below.
3. **Build** — `swift build` must succeed with zero errors.
4. **Check warnings** — `swift build 2>&1 | grep -i deprecated` must return nothing MISO-related.
5. **Test** — `swift test` must pass.

## Detection

```bash
# Deprecated status cases
grep -rnE '\.(error|richError)\(message:' --include='*.swift' .

# Deprecated enum cases
grep -rnE 'HelperText\.plain|helperText: *\.plain|\.text\(' --include='*.swift' .

# Components with initializers taking String / AttributedString texts
grep -rnE 'MISO(ListItemData|BulletList\.Item|AlertMessage|SwitchItem|CheckboxItem|CheckboxItemIndeterminate|RadioItem|PinCodeInput|TextInput|PasswordInput)\(' --include='*.swift' .
```

The reliable detection is the compiler: every deprecated initializer emits a warning.

## Transformation rules

### Generic rules (any field typed `MISOTextualContent`)

| Before | After |
|---|---|
| `someString` (variable) | `.raw(someString)` |
| `"Literal"` | unchanged for most fields, or `.raw("Literal")` when a warning appears (see pitfalls) |
| `myAttributedString` | `.rich(myAttributedString)` |
| `LocalizedStringKey("key"), tableName: t, bundle: b` | `.localized("key", tableName: t, bundle: b)` |
| `[String]` variable | `strings.map { .raw($0) }` |
| `[AttributedString]` variable | `attributedStrings.map { .rich($0) }` |
| `nil` or omitted | unchanged |

### MISOListItemData

| Before | After |
|---|---|
| `MISOListItemData(label: "Foo")` | `MISOListItemData(label: .textual("Foo"))` |
| `MISOListItemData(label: "Foo", hasBoldLabel: true)` | `MISOListItemData(label: .textual("Foo", isBold: true))` |
| `MISOListItemData(label: "Foo", description: "Bar", overline: "Over")` | unchanged |
| `MISOListItemData(label: "Foo", overline: myAttr)` | `MISOListItemData(label: "Foo", overline: .rich(myAttr))` |
| `MISOListItemData(label: myView, accessibilityLabel: "Foo")` | unchanged |
| `MISOListItemData(key: "foo.label")` | `MISOListItemData(label: .textual(.localized("foo.label")))` |
| `.text("Foo", isBold: true)` on `Label` | `.textual("Foo", isBold: true)` |

Any textual field can now be styled or localized:

```swift
MISOListItemData(
    label: .textual(.rich(myStyledLabel)),
    description: .rich(myStyledDescription),
    overline: .rich(myStyledOverline),
    extraLabel: .localized("extra.label.key"),
    helperText: "Plain string literal")
```

Also move `overline:` to its canonical position, after `description:`.

### MISOBulletList.Item

| Before | After |
|---|---|
| `Item("Foo")` with a literal | unchanged |
| `Item(someString)` | `Item(.raw(someString))` |
| `Item(myAttributedString)` | `Item(.rich(myAttributedString))` |
| `Item(LocalizedStringKey("key"), bundle: .module)` | `Item(.localized("key", bundle: .module))` |

### MISOAlertMessage

| Before | After |
|---|---|
| `description: "Foo"`, `bulletList: ["A", "B"]` with literals | unchanged |
| `description: someString` | `description: .raw(someString)` |
| `description: myAttributedString` | `description: .rich(myAttributedString)` |
| `bulletList: someStrings` | `bulletList: someStrings.map { .raw($0) }` |
| `bulletList: myAttributedStrings` | `bulletList: myAttributedStrings.map { .rich($0) }` |

An array literal can mix raw literals, `.localized(…)` and `.rich(…)`.

### MISOSwitchItem, MISOCheckboxItem, MISORadioItem

| Before | After |
|---|---|
| `errorText: someString` | `errorText: .raw(someString)` |
| `errorText: "Message"` | `errorText: .raw("Message")` |
| `errorText: myAttributedString` | `errorText: .rich(myAttributedString)` |
| `errorText: nil` or omitted | unchanged |

### MISOCheckboxItemIndeterminate

| Before | After |
|---|---|
| `errorText: someString` | `errorText: .raw(someString)` |
| `errorText: "Message"`, `nil` or omitted | unchanged |

### MISOPinCodeInput

| Before | After |
|---|---|
| `helperText: someString` or `"Message"` | `helperText: .raw(…)` |
| `helperText: myAttributedString` | `helperText: .rich(myAttributedString)` |
| `helperText: LocalizedStringKey("key"), tableName: t, bundle: b` | `helperText: .localized("key", tableName: t, bundle: b)` |
| `status: .error(message: "Message")` | `status: .textualError(message: "Message")` |
| `status: .richError(message: myAttributedString)` | `status: .textualError(message: .rich(myAttributedString))` |

### MISOTextInput and MISOPasswordInput

| Before | After |
|---|---|
| `helperText: someString` or `"Message"` | `helperText: .raw(…)` |
| `helperText: myAttributedString` | `helperText: .rich(myAttributedString)` |
| `status: .error(message: "Message")` | `status: .textualError(message: "Message")` |
| `status: .richError(message: myAttributedString)` | `status: .textualError(message: .rich(myAttributedString))` |

`MISOPasswordInput` uses `MISOTextInput.Status`.

### MISOTextArea

No initializer changed, only the two enums.

| Before | After |
|---|---|
| `helperText: .plain("Message")` | `helperText: .textual("Message")` |
| `helperText: .plain(someString)` | `helperText: .textual(.raw(someString))` |
| `helperText: .rich(myAttributedString)` | `helperText: .textual(.rich(myAttributedString))` |
| `status: .error(message: "Message")` | `status: .textualError(message: "Message")` |
| `status: .richError(message: myAttributedString)` | `status: .textualError(message: .rich(myAttributedString))` |
| `helperText: .charactersMaxCount(500)` | unchanged |

## Pitfalls: overload resolution with string literals

`AttributedString`, `LocalizedStringKey` and `MISOListItemData.Label` are all expressible by a string literal, so a bare literal can select a deprecated initializer and emit a warning even when the intent is the new API.

- `MISOListItemData(label: "Foo")`, or with only `textSlot` / `bottomSlot`: write `label: .textual("Foo")`.
- `MISOListItemData(label: myView, accessibilityLabel: "Foo", overline: "Over")`: write `overline: .raw("Over")`.
- `MISOListItemData(label: "Foo", description: "Bar")`: no warning, the new initializer is selected.
- `MISOAlertMessage(_ key:, description: "abc")`: write `description: .raw("abc")`.
- `errorText: "abc"` or `helperText: "abc"` on switch, checkbox, radio, pin code, text input and password input: write `.raw("abc")`.
- `MISOBulletList.Item("Foo")` and `MISOAlertMessage(label:, description: "Foo", bulletList: ["A", "B"])` with the `label:` initializer: no warning.

When a warning persists after the transformation, make the intent explicit with `.raw(…)`, `.rich(…)` or `.textual(…)`.

## Checklist

- [ ] No `.error(message:)` / `.richError(message:)` left on `MISOTextInput`, `MISOPasswordInput`, `MISOPinCodeInput`, `MISOTextArea`
- [ ] No `MISOTextArea.HelperText.plain` / `.rich` left
- [ ] No `MISOListItemData.Label.text` left
- [ ] No `String` / `AttributedString` / `LocalizedStringKey` variable passed to a `MISOTextualContent` field without `.raw` / `.rich` / `.localized`
- [ ] `swift build` shows no MISO deprecation warning
- [ ] `swift test` passes
