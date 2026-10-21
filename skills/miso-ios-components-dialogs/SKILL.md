---
name: miso-ios-components-dialogs
description: Usage and code examples for MISO iOS Dialogs components — MISOAlertMessage (statuses, bullet list, link, dismiss) and MISOInlineAlert (statuses, icon). Load the miso-ios-framework-usage skill first for imports, themes and image rules.
license: MIT
---

# MISO Dialogs components

> Prerequisite: load `miso-ios-framework-usage` first for imports, themes and image rules.

## Alert Message

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative`

```swift
MISOAlertMessage(label: "Label")
MISOAlertMessage(label: "Label", status: .warning, description: "Details") { /* dismiss */ }
MISOAlertMessage(label: "Label",
                 status: .neutral(image: MISOImage(asset: Image("ic_heart"), renderingMode: .original)), // .original to avoid to have tinted images
                 bulletList: ["A", "B"],
                 link: .init(text: "More", position: .bottom) {},
                 onClose: {})
// description and bulletList elements are MISOTextualContent: raw (string literal), localized or rich
MISOAlertMessage(label: "Label",
                 description: .rich(AttributedString(…)),
                 bulletList: ["Raw", .localized("key", bundle: Bundle.module), .rich(AttributedString(…))])
```

> **Literal pitfall**: with the `LocalizedStringKey` initializer (`MISOAlertMessage(LocalizedStringKey("key"), …)`), a bare `description: "abc"`
> may select a deprecated initializer and emit a deprecation warning, because `AttributedString` is itself expressible by a string literal.
> Write `description: .raw("abc")` in that case. With the `label:` initializer a bare literal is fine.

---

## Inline Alert

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative`

```swift
MISOInlineAlert(label: "Label")
MISOInlineAlert(label: "Label", status: .warning)
MISOInlineAlert(label: "Label", status: .accent(image: MISOImage(asset: Image("ic_heart"))))
```
