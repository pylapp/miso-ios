# Migration Guide

- [v1.1.0 → v1.2.0](#v110--v120)

## v1.1.0 → v1.2.0

### Overview

The ``MISOListItemData`` API has been reorganized so that **every textual field**
(`label`, `description`, `overline`, `extraLabel`, `helperText`) can accept **a raw `String`,
a localized string or a styled `AttributedString`**, instead of only the `overline`.

The six former initializers (one per combination of label type × overline type) are now
deprecated and replaced by two unified initializers. The `MISOListItemData.Label.text` case is
deprecated in favor of the new `.textual` case.

The `MISOBulletList.Item` and `MISOAlertMessage` initializers follow the same logic: the `String`, `AttributedString`
(and `LocalizedStringKey` for the bullet list item) initializers are deprecated and replaced by initializers taking `MISOTextualContent`.

### Before You Begin

#### Prerequisites

- Use version 1.1.0 or later.

### Public `MISOTextualContent` type

The previously-internal `MISOTextualContent` enum is now **public** and `@frozen`. It represents
a textual value that can be a raw `String`, a localized string or a styled `AttributedString`:

```swift
@frozen
public enum MISOTextualContent: @unchecked Sendable, ExpressibleByStringLiteral {
    case raw(String)
    case localized(_: LocalizedStringKey, tableName: String? = nil, bundle: Bundle = .main)
    case rich(AttributedString)
}
```

Thanks to the `ExpressibleByStringLiteral` conformance, a string literal is implicitly
converted to `.raw(…)`, so plain-text call sites stay concise.

### New `.textual` case on `MISOListItemData.Label`

```swift
public enum Label: ExpressibleByStringLiteral {
    @available(*, deprecated) case text(_: String, isBold: Bool = false)
    case textual(_: MISOTextualContent, isBold: Bool = false)   // new in v1.2.0
    case custom(_ view: AnyView, accessibilityLabel: String)
}
```

`Label` also conforms to `ExpressibleByStringLiteral`: a string literal converts to
`.textual(.raw(literal), isBold: false)`. A styled label is `.textual(.rich(myAttributedString))`
and a localized one is `.textual(.localized("key"))`.

### New unified initializers

```swift
// Replaces the initializers with `label: String` / `key: LocalizedStringKey`
public init(
    label: Label,
    description: MISOTextualContent? = nil,
    overline: MISOTextualContent? = nil,
    extraLabel: MISOTextualContent? = nil,
    helperText: MISOTextualContent? = nil,
    textSlot: Slot? = nil,
    bottomSlot: Slot? = nil)

// Replaces the initializers with `label: some View`
public init(
    label: some View,
    accessibilityLabel: String,
    description: MISOTextualContent? = nil,
    overline: MISOTextualContent? = nil,
    extraLabel: MISOTextualContent? = nil,
    helperText: MISOTextualContent? = nil,
    textSlot: Slot? = nil,
    bottomSlot: Slot? = nil)
```

> `.textual` will be renamed `.text` once the deprecated API is removed.

### Migration

**Impact**: Low — all existing call sites keep working; only deprecation warnings appear.

| Before (v1.1 — deprecated) | After (v1.2) |
|---|---|
| `MISOListItemData(label: "Foo")` | `MISOListItemData(label: .textual("Foo"))` |
| `MISOListItemData(label: "Foo", hasBoldLabel: true)` | `MISOListItemData(label: .textual("Foo", isBold: true))` |
| `MISOListItemData(label: "Foo", description: "Bar", overline: "Over")` | unchanged (`description` and `overline` are now `MISOTextualContent`) |
| `MISOListItemData(label: "Foo", overline: myAttr)` | `MISOListItemData(label: "Foo", overline: .rich(myAttr))` |
| `MISOListItemData(label: myView, accessibilityLabel: "Foo")` | unchanged |
| `MISOListItemData(key: "foo.label")` | `MISOListItemData(label: .textual(.localized("foo.label")))` |
| `.text("Foo", isBold: true)` (on `Label`) | `.textual("Foo", isBold: true)` |

**New capability** — any textual field can now be styled or localized:

```swift
// Before (v1.1) — only `overline` could be styled
MISOListItemData(label: "Foo", overline: myStyledOverline)

// After (v1.2) — any textual field can be styled or localized
MISOListItemData(
    label: .textual(.rich(myStyledLabel)),
    description: .rich(myStyledDescription),
    overline: .rich(myStyledOverline),
    extraLabel: .localized("extra.label.key"),
    helperText: "Plain string literal")
```

**Required Action**:
- Replace `MISOListItemData(label: "Foo")` (a label alone, or with only `textSlot` / `bottomSlot`) with `MISOListItemData(label: .textual("Foo"))`,
  see the note below.
- Replace `hasBoldLabel: true` with `.textual("Foo", isBold: true)`.
- Replace `key: LocalizedStringKey` with `.textual(.localized(key, tableName:, bundle:))`.
- Replace `overline: myAttributedString` with `overline: .rich(myAttributedString)` and
  move the `overline:` parameter to its canonical position (after `description:` in the new
  init order).
- Replace any `Label.text(…)` usage with `.textual(…)`.

> **Note on overload resolution**: the new initializers reuse the `label:` argument label of the deprecated ones, and
> `Label` as well as `AttributedString` are expressible by a string literal. As a consequence, two call forms may select a deprecated
> initializer and emit a deprecation warning, even if the intent is the new API:
> - a bare literal label with no textual field, for example `MISOListItemData(label: "Foo")` or with only `textSlot` / `bottomSlot`.
>   Write `label: .textual("Foo")` instead;
> - a custom view label with a literal `overline`, for example `MISOListItemData(label: myView, accessibilityLabel: "Foo", overline: "Over")`.
>   Write `overline: .raw("Over")` instead.
>
> As soon as `description`, `overline`, `extraLabel` or `helperText` is given with a literal next to a literal label
> (`MISOListItemData(label: "Foo", description: "Bar")`) the new initializer is selected without any warning.

**Reason for Change**: Unify the API so that every textual field of a list item can carry
rich text, not only the overline, without multiplying initializer overloads.

### `MISOBulletList.Item` — unified initializer

The three initializers of `MISOBulletList.Item` (`String`, `AttributedString` and `LocalizedStringKey`)
are deprecated and replaced by a single one taking an ``MISOTextualContent``:

```swift
public init(_ text: MISOTextualContent,
            subListType: MISOBulletList.Type? = nil,
            subListTextStyle: MISOBulletList.TextStyle? = nil,
            subListHasBoldText: Bool? = nil,
            @MISOBulletListItemBuilder subItems: () -> [MISOBulletList.Item] = { [] })
```

**Impact**: Low — all existing call sites keep working; only deprecation warnings appear.
String literals still work as is (`MISOBulletList.Item("Label")` is `.raw("Label")`), without warning.

| Before (deprecated) | After (v1.2) |
|---|---|
| `MISOBulletList.Item("Foo")` with a literal | unchanged |
| `MISOBulletList.Item(someString)` | `MISOBulletList.Item(.raw(someString))` |
| `MISOBulletList.Item(myAttributedString)` | `MISOBulletList.Item(.rich(myAttributedString))` |
| `MISOBulletList.Item(LocalizedStringKey("key"), bundle: .module)` | `MISOBulletList.Item(.localized("key", bundle: .module))` |

**Required Action**:
- Replace `Item(someString)` with `Item(.raw(someString))` when the value is not a literal.
- Replace `Item(myAttributedString)` with `Item(.rich(myAttributedString))`.
- Replace `Item(LocalizedStringKey(…), tableName:, bundle:)` with `Item(.localized(…, tableName:, bundle:))`.

**Reason for Change**: Unify the API around `MISOTextualContent` without multiplying initializer overloads.

### `MISOAlertMessage` — unified initializers

The eight initializers of `MISOAlertMessage` (label as `String` or `LocalizedStringKey` × `description` as `String` or
`AttributedString` × `bulletList` as `[String]` or `[AttributedString]`) are deprecated and replaced by two unified ones:

```swift
public init(label: String,
            status: MISOAlertStatus = .positive,
            description: MISOTextualContent? = nil,
            bulletList: [MISOTextualContent] = [],
            link: Link? = nil,
            onClose: (() -> Void)? = nil)

public init(_ key: LocalizedStringKey,
            tableName: String? = nil,
            bundle: Bundle = .main,
            status: MISOAlertStatus = .positive,
            description: MISOTextualContent? = nil,
            bulletList: [MISOTextualContent] = [],
            link: Link? = nil,
            onClose: (() -> Void)? = nil)
```

**Impact**: Low — all existing call sites keep working; only deprecation warnings appear.
String literals still work as is (`description: "Foo"`, `bulletList: ["A", "B"]`), without warning.

| Before (deprecated) | After (v1.2) |
|---|---|
| `description: "Foo"` / `bulletList: ["A", "B"]` with literals | unchanged |
| `description: someString` | `description: .raw(someString)` |
| `description: myAttributedString` | `description: .rich(myAttributedString)` |
| `bulletList: someStrings` | `bulletList: someStrings.map { .raw($0) }` |
| `bulletList: myAttributedStrings` | `bulletList: myAttributedStrings.map { .rich($0) }` |

**Required Action**:
- Replace `description: myAttributedString` with `description: .rich(myAttributedString)`.
- Replace `description: someStringVariable` with `description: .raw(someStringVariable)`.
- Replace `bulletList: [AttributedString]` and `bulletList: [String]` variables with arrays of `.rich(…)` / `.raw(…)`;
  an array literal can also mix raw literals, `.localized(…)` and `.rich(…)`.

> **Note on string literals**: with the `LocalizedStringKey` initializer, `description: "abc"` (a bare literal) may select a deprecated
> initializer and emit a deprecation warning, because `AttributedString` is itself expressible by a string literal.
> Write `description: .raw("abc")` to select the new initializer.

**Reason for Change**: Unify the API around `MISOTextualContent` without multiplying initializer overloads.

### `MISOSwitchItem` — unified initializers

The four initializers of `MISOSwitchItem` (label as `String` or `LocalizedStringKey` × `errorText` as `String` or `AttributedString`)
are deprecated and replaced by two unified ones taking `errorText: MISOTextualContent? = nil`.

**Impact**: Low — all existing call sites keep working; only deprecation warnings appear.

| Before (deprecated) | After (v1.2) |
|---|---|
| `errorText: someString` | `errorText: .raw(someString)` |
| `errorText: "Message"` (literal) | `errorText: .raw("Message")` |
| `errorText: myAttributedString` | `errorText: .rich(myAttributedString)` |
| `errorText: nil` or no `errorText` | unchanged |

> **Note on string literals**: `errorText: "abc"` (a bare literal) may select a deprecated initializer and emit a deprecation warning,
> because `AttributedString` is itself expressible by a string literal. Write `errorText: .raw("abc")` to select the new initializer.

**Required Action**:
- Replace `errorText: myAttributedString` with `errorText: .rich(myAttributedString)`.
- Replace `errorText: someStringVariable` or `errorText: "Message"` with `errorText: .raw(…)`.

**Reason for Change**: Unify the API around `MISOTextualContent` without multiplying initializer overloads.

### `MISOCheckboxItem` — unified initializers

The four initializers of `MISOCheckboxItem` (label as `String` or `LocalizedStringKey` × `errorText` as `String` or `AttributedString`)
are deprecated and replaced by two unified ones taking `errorText: MISOTextualContent? = nil`.

**Impact**: Low — all existing call sites keep working; only deprecation warnings appear.

| Before (deprecated) | After (v1.2) |
|---|---|
| `errorText: someString` | `errorText: .raw(someString)` |
| `errorText: "Message"` (literal) | `errorText: .raw("Message")` |
| `errorText: myAttributedString` | `errorText: .rich(myAttributedString)` |
| `errorText: nil` or no `errorText` | unchanged |

> **Note on string literals**: `errorText: "abc"` (a bare literal) may select a deprecated initializer and emit a deprecation warning,
> because `AttributedString` is itself expressible by a string literal. Write `errorText: .raw("abc")` to select the new initializer.

**Required Action**:
- Replace `errorText: myAttributedString` with `errorText: .rich(myAttributedString)`.
- Replace `errorText: someStringVariable` or `errorText: "Message"` with `errorText: .raw(…)`.

**Reason for Change**: Unify the API around `MISOTextualContent` without multiplying initializer overloads.

### `MISORadioItem` — unified initializers

The four initializers of `MISORadioItem` (label as `String` or `LocalizedStringKey` × `errorText` as `String` or `AttributedString`)
are deprecated and replaced by two unified ones taking `errorText: MISOTextualContent? = nil`.

**Impact**: Low — all existing call sites keep working; only deprecation warnings appear.

| Before (deprecated) | After (v1.2) |
|---|---|
| `errorText: someString` | `errorText: .raw(someString)` |
| `errorText: "Message"` (literal) | `errorText: .raw("Message")` |
| `errorText: myAttributedString` | `errorText: .rich(myAttributedString)` |
| `errorText: nil` or no `errorText` | unchanged |

> **Note on string literals**: `errorText: "abc"` (a bare literal) may select a deprecated initializer and emit a deprecation warning,
> because `AttributedString` is itself expressible by a string literal. Write `errorText: .raw("abc")` to select the new initializer.

**Required Action**:
- Replace `errorText: myAttributedString` with `errorText: .rich(myAttributedString)`.
- Replace `errorText: someStringVariable` or `errorText: "Message"` with `errorText: .raw(…)`.

**Reason for Change**: Unify the API around `MISOTextualContent` without multiplying initializer overloads.

### `MISOCheckboxItemIndeterminate` — `errorText` as `MISOTextualContent`

The two initializers of `MISOCheckboxItemIndeterminate` (label as `String` or `LocalizedStringKey`) now take `errorText: MISOTextualContent? = nil`
instead of `errorText: String? = nil`. The error message can now also be a localized string or a rich `AttributedString`, which was not possible before.
The former initializers taking `errorText: String?` are deprecated.

**Impact**: Low — all existing call sites keep working; only calls passing a `String` variable emit a deprecation warning.
String literals, `nil` or omitted `errorText` still work as is, without warning.

| Before (deprecated) | After (v1.2) |
|---|---|
| `errorText: someString` | `errorText: .raw(someString)` |
| `errorText: "Message"` (literal), `nil` or omitted | unchanged |

**Required Action**:
- Replace `errorText: someStringVariable` with `errorText: .raw(someStringVariable)`.

**Reason for Change**: Unify the API around `MISOTextualContent` and let the error message be rich or localized like for the other checkbox, radio and switch items.

### `MISOPinCodeInput` — unified initializer and `textualError` status

The three initializers of `MISOPinCodeInput` (`helperText` as `String`, `AttributedString`, or `LocalizedStringKey` with `helperText key:`, `tableName:` and `bundle:`)
are deprecated and replaced by a single one taking `helperText: MISOTextualContent? = nil`.

The `MISOPinCodeInput.Status` cases `.error(message: String)` and `.richError(message: AttributedString)` are deprecated and replaced by
`.textualError(message: MISOTextualContent)`. `.textualError` will be renamed `.error` once the deprecated API is removed.

**Impact**: Low — all existing call sites keep working; only deprecation warnings appear.

| Before (deprecated) | After (v1.2) |
|---|---|
| `helperText: someString` or `helperText: "Message"` | `helperText: .raw(…)` |
| `helperText: myAttributedString` | `helperText: .rich(myAttributedString)` |
| `helperText: LocalizedStringKey("key"), tableName: t, bundle: b` | `helperText: .localized("key", tableName: t, bundle: b)` |
| `status: .error(message: "Message")` | `status: .textualError(message: "Message")` |
| `status: .richError(message: myAttributedString)` | `status: .textualError(message: .rich(myAttributedString))` |
| `helperText: nil` or no `helperText` | unchanged |

> **Note on string literals**: `helperText: "abc"` (a bare literal) may select a deprecated initializer and emit a deprecation warning,
> because `AttributedString` and `LocalizedStringKey` are themselves expressible by a string literal. Write `helperText: .raw("abc")` to select the new initializer.

**Required Action**:
- Replace `helperText: myAttributedString` with `helperText: .rich(myAttributedString)`.
- Replace `helperText: someStringVariable` or `helperText: "Message"` with `helperText: .raw(…)`.
- Replace `helperText: LocalizedStringKey(…), tableName:, bundle:` with `helperText: .localized(…, tableName:, bundle:)`.
- Replace `.error(message:)` and `.richError(message:)` with `.textualError(message:)`.

**Reason for Change**: Unify the API around `MISOTextualContent` without multiplying initializer overloads or status cases.

### `MISOTextInput` — unified initializers and `textualError` status

The four initializers of `MISOTextInput` (label as `String` or `LocalizedStringKey` × `helperText` as `String` or `AttributedString`)
are deprecated and replaced by two unified ones taking `helperText: MISOTextualContent? = nil`.

The `MISOTextInput.Status` cases `.error(message: String)` and `.richError(message: AttributedString)` are deprecated and replaced by
`.textualError(message: MISOTextualContent)`. `.textualError` will be renamed `.error` once the deprecated API is removed.
This `Status` is also the one used by `MISOPasswordInput`.

**Impact**: Low — all existing call sites keep working; only deprecation warnings appear.

| Before (deprecated) | After (v1.2) |
|---|---|
| `helperText: someString` or `helperText: "Message"` | `helperText: .raw(…)` |
| `helperText: myAttributedString` | `helperText: .rich(myAttributedString)` |
| `status: .error(message: "Message")` | `status: .textualError(message: "Message")` |
| `status: .richError(message: myAttributedString)` | `status: .textualError(message: .rich(myAttributedString))` |
| `helperText: nil` or no `helperText` | unchanged |

> **Note on string literals**: `helperText: "abc"` (a bare literal) may select a deprecated initializer and emit a deprecation warning,
> because `AttributedString` is itself expressible by a string literal. Write `helperText: .raw("abc")` to select the new initializer.

**Required Action**:
- Replace `helperText: myAttributedString` with `helperText: .rich(myAttributedString)`.
- Replace `helperText: someStringVariable` or `helperText: "Message"` with `helperText: .raw(…)`.
- Replace `.error(message:)` and `.richError(message:)` with `.textualError(message:)`.

**Reason for Change**: Unify the API around `MISOTextualContent` without multiplying initializer overloads or status cases.

### `MISOPasswordInput` — unified initializers

The four initializers of `MISOPasswordInput` (label as `String` or `LocalizedStringKey` × `helperText` as `String` or `AttributedString`)
are deprecated and replaced by two unified ones taking `helperText: MISOTextualContent? = nil`.
Its `status` is the `MISOTextInput.Status`: see the `MISOTextInput` section above for `.textualError(message:)`.

**Impact**: Low — all existing call sites keep working; only deprecation warnings appear.

| Before (deprecated) | After (v1.2) |
|---|---|
| `helperText: someString` or `helperText: "Message"` | `helperText: .raw(…)` |
| `helperText: myAttributedString` | `helperText: .rich(myAttributedString)` |
| `helperText: nil` or no `helperText` | unchanged |

> **Note on string literals**: `helperText: "abc"` (a bare literal) may select a deprecated initializer and emit a deprecation warning,
> because `AttributedString` is itself expressible by a string literal. Write `helperText: .raw("abc")` to select the new initializer.

**Required Action**:
- Replace `helperText: myAttributedString` with `helperText: .rich(myAttributedString)`.
- Replace `helperText: someStringVariable` or `helperText: "Message"` with `helperText: .raw(…)`.
- Replace `status: .error(message:)` and `.richError(message:)` with `.textualError(message:)`.

**Reason for Change**: Unify the API around `MISOTextualContent` without multiplying initializer overloads.

### `MISOTextArea` — `textual` helper text and `textualError` status

`MISOTextArea` has no initializer to deprecate, but its two enums changed:
- `MISOTextArea.HelperText.plain(String)` and `.rich(AttributedString)` are deprecated and replaced by `.textual(_: MISOTextualContent)`.
  `.charactersMaxCount(_:)` is unchanged.
- `MISOTextArea.Status.error(message: String)` and `.richError(message: AttributedString)` are deprecated and replaced by
  `.textualError(message: MISOTextualContent)`. `.textualError` will be renamed `.error` once the deprecated API is removed.

**Impact**: Low — all existing call sites keep working; only deprecation warnings appear.

| Before (deprecated) | After (v1.2) |
|---|---|
| `helperText: .plain("Message")` | `helperText: .textual("Message")` |
| `helperText: .plain(someString)` | `helperText: .textual(.raw(someString))` |
| `helperText: .rich(myAttributedString)` | `helperText: .textual(.rich(myAttributedString))` |
| `status: .error(message: "Message")` | `status: .textualError(message: "Message")` |
| `status: .richError(message: myAttributedString)` | `status: .textualError(message: .rich(myAttributedString))` |
| `helperText: .charactersMaxCount(500)` | unchanged |

**Required Action**:
- Replace `.plain(…)` with `.textual(…)` (a string literal is enough, a `String` variable needs `.raw(…)`).
- Replace `.rich(myAttributedString)` with `.textual(.rich(myAttributedString))`.
- Replace `.error(message:)` and `.richError(message:)` with `.textualError(message:)`.

**Reason for Change**: Unify the API around `MISOTextualContent` without multiplying enum cases.