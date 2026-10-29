---
name: miso-ios-components-content-display
description: Usage and code examples for OUDS iOS Content Display components — MISOBulletList (unordered, ordered, nested items, raw / localized / rich `MISOTextualContent` texts). Load the miso-ios-framework-usage skill first for imports, themes, and shared rules.
license: MIT
---

# MISO Content Display components

> Prerequisite: load `miso-ios-framework-usage` first for imports, themes and shared rules.

## MISOBulletList

```swift
MISOBulletList {
    MISOBulletList.Item("Label 1")
    MISOBulletList.Item("Label 2")
}

MISOBulletList(type: .ordered) {
    MISOBulletList.Item("Label 1") { MISOBulletList.Item("Label 1.1") }
}

// Item text is an MISOTextualContent: raw (string literal), localized or rich
MISOBulletList {
    MISOBulletList.Item("Raw text")
    MISOBulletList.Item(.localized("item_label", bundle: Bundle.module))
    MISOBulletList.Item(.rich(AttributedString(…)))
}
```
