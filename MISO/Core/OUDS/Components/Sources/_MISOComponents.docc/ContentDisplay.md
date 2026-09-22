# Content Display

@Metadata {
    @PageImage(purpose: icon, source: "ic_folder_categories")
    @PageImage(purpose: card, source: "ic_folder_categories")
}

Some components can be used for **content display**. These are inherited from OUDS.

## Overview

### Bullet List

The ``MISOBulletList`` is a UI element that helps to display related individual text items grouped together; items usually start with a number or a bullet.

@TabNavigator {
    @Tab("BlueCoat") {
        ![A bullet list in light and dark modes with BlueCoat theme](component_bullet_list_BlueCoat)
    }
    @Tab("FoxyRough") {
        ![A bullet list in light and dark modes with FoxyRough theme](component_bullet_list_FoxyRough)
    }
}

``MISOBulletList`` is also known as _Unordered list_ or _Ordered list_ and is not an interactive element by default.

```swift
// Bare list with 3 items
MISOBulletList(type: .bare) {
    MISOBulletList.Item("Label 1")
    MISOBulletList.Item("Label 2")
    MISOBulletList.Item("Label 3")
}

// Item of Unordered list with bullet as tick, a text style
// body medium and text bold
MISOBulletList(type: .unordered(asset: .tick),
              textStyle: .bodyMedium,
              isBold: true)  {
    MISOBulletList.Item("Label 1")
    MISOBulletList.Item("Label 2")
    MISOBulletList.Item("Label 3")
}

// Ordered list with 3 items in first level,
// and one item as sub item (second level),
// and 2 items as sub item in (third level)
MISOBulletList(type: .ordered) {
    MISOBulletList.Item("Label 1") {
        MISOBulletList.Item("Label 1.1") {
            MISOBulletList.Item("Label 1.1.1")
            MISOBulletList.Item("Label 1.1.2")
        }
    }
    MISOBulletList.Item("Label 2")
    MISOBulletList.Item("Label 3")
}
```
