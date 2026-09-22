# ``MISOThemesMISOBlueCoat``

@Metadata {
    @PageImage(purpose: icon, source: "ic_theme_bluecoat")
    @DisplayName("Theme BlueCoat", style: symbol)
    @TitleHeading("Library")
}
<!-- 
Do not add @PageImage(purpose: card) because not managed for landing page of online doc.
See https://github.com/swiftlang/swift-docc/issues/1283
-->

This BlueCoat theme is a blue theme, quite smooth and simple.

## Overview

> Note: The BlueCoat theme uses the Shantell Sans font family

> Important: The BlueCoat theme does not embed charts colors yet.

## How to use the theme

You can use ``BlueCoatTheme`` directly. To use the ``BlueCoatTheme`` without further modifications, you will have to use the `MISOThemeableView` for your root view and give it an instance of ``BlueCoatTheme``. Keep in mind the themes are *Swift class objects* and can be heavy, so you may use only as instance as singleton and not store any properties.

```swift
@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            MISOThemeableView(theme: BlueCoatTheme()) {
                // Your root view
            }
        }
    }
}
```

Then, in your views, you can simply use the theme through an environment variable to get the tokens:

```swift
struct SomeView: View {

    // Get MISO environment variable for theme thanks to themeable view
    @Environment(\.theme) var theme
    
    var body: some View {
        
        // Use the theme to retrieve the tokens
        // For spaces: theme.spaces
        // For sizes: theme.sizes
        // For borders: theme.borders
        // For elevations: theme.elevations
        // For opacities: theme.opacities
        // For colors: theme.colors
        // For button configuration: theme.button
        // For link configuration: theme.link
        // Etc.
    }
}
```

## How it looks like

<!-- Use online images because stored in another Swift Package library and do not want to replicate assets -->

### Actions

![A button component in light and dark modes with BlueCoat theme](component_button_BlueCoat.png)

### Content display

#### Bullet list

![A bullet list component in light and dark modes with BlueCoat theme](component_bullet_list_BlueCoat.png)

### Controls

#### Checkboxes

@TabNavigator {
    @Tab("Checkbox") {
        ![A checkbox component in light and dark modes with BlueCoat theme](component_checkbox_BlueCoat.png)        
    }
    @Tab("Checkbox item") {
        ![A checkbox item component in light and dark modes with BlueCoat theme](component_checkboxItem_BlueCoat.png)
    }
}
<!-- Maybe not relevant to display checkbox picker -->

#### Radios

@TabNavigator {
    @Tab("Radio") {
        ![A radio button component in light and dark modes with BlueCoat theme](component_radio_BlueCoat.png)        
    }
    @Tab("Radio item") {
        ![A radio item component in light and dark modes with BlueCoat theme](component_radioItem_BlueCoat.png)
    }
}
<!-- Maybe not relevant to display radio picker -->

#### Switches

@TabNavigator {
    @Tab("Switch") {
        ![A switch component in light and dark modes with BlueCoat theme](component_switch_BlueCoat.png)        
    }
    @Tab("Switch item") {
        ![A switch item component in light and dark modes with BlueCoat theme](component_switchItem_BlueCoat.png)
    }
}

#### Chips

@TabNavigator {
    @Tab("Filter chip") {
        ![A filter chip component in light and dark modes with BlueCoat theme](component_filterChip_BlueCoat.png)        
    }
    @Tab("Suggestion chip") {
        ![A suggestion chip component in light and dark modes with BlueCoat theme](component_suggestionChip_BlueCoat.png)
    }
}
<!-- Maybe not relevant to display chip picker -->

#### Text input

![A text input component in light and dark modes with BlueCoat theme](component_textInput_BlueCoat.png)

### Indicators

#### Badge

@TabNavigator {
    @Tab("Badge standard") {
        ![A badge standard component in light and dark modes with BlueCoat theme](component_badge_standard_BlueCoat.png)
    }
    @Tab("Badge count") {
        ![A badge count component in light and dark modes with BlueCoat theme](component_badge_count_BlueCoat.png)
    }
    @Tab("Badge icon") {
        ![A badge icon component in light and dark modes with BlueCoat theme](component_badge_icon_BlueCoat.png)
    }
}

#### Tags

@TabNavigator {
    @Tab("Tag") {
        ![A tag component in light and dark modes with BlueCoat theme](component_tag_BlueCoat.png)        
    }
    @Tab("Input tag") {
        ![An input tag component in light and dark modes with BlueCoat theme](component_inputTag_BlueCoat.png)
    }
}

### Layouts

<!-- Maybe not relevant to display colored surface -->

#### Dividers

@TabNavigator {
    @Tab("Horizontal divider") {
        ![An horizontal divider component in light and dark modes with BlueCoat theme](component_horizontalDivider_BlueCoat.png)
    }
    @Tab("Vertical divider") {
        ![A vertical divider component in light and dark modes with BlueCoat theme](component_verticalDivider_BlueCoat.png)
    }
}

### Navigations

#### Link

![A link component in light and dark modes with BlueCoat theme](component_link_BlueCoat.png)

#### Tab bar

@TabNavigator {
    @Tab("With Liquid Glass") {
        ![A tab component in light mode with BlueCoat theme and Liquid Glass](component_tabBar_LiquidGlass_BlueCoat_light.png)
    }
    @Tab("Without Liquid Glass") {
        ![A tab component in light mode with BlueCoat theme](component_tabBar_BlueCoat_light.png)
    }
}

#### List item

@TabNavigator {
    @Tab("Static") {
        ![A static list item component in light and dark modes with BlueCoat theme](component_static_list_item_BlueCoat.png)
    }
    @Tab("Navigation") {
        ![A navigation list item component in light and dark modes with BlueCoat theme](component_navigation_list_item_BlueCoat.png)
    }
}

#### Tool bar

![A tool bar component in light and dark modes with BlueCoat theme](component_toolBarTop_BlueCoat_light.png)

### Dialogs

#### Alert message

![An alert message component in light and dark modes with BlueCoat theme](component_alertMessage_BlueCoat.png)

#### Inline alert

![An inline alert component in light and dark modes with BlueCoat theme](component_inlineAlert_BlueCoat.png)

### Controls

#### Pin code input

![A pin code input component in light and dark modes with BlueCoat theme](component_pinCodeInput_BlueCoat.png)

#### Password input

![A password input component in light and dark modes with BlueCoat theme](component_passwordInput_BlueCoat.png)

#### Text area

![A text area component in light and dark modes with BlueCoat theme](component_textArea_BlueCoat.png)

### Indicators

#### Progress indicator

@TabNavigator {
    @Tab("Circular") {
        ![A circular progress indicator component in light and dark modes with BlueCoat theme](component_progress_indicator_circular_BlueCoat.png)
    }
    @Tab("Linear") {
        ![A linear progress indicator component in light and dark modes with BlueCoat theme](component_progress_indicator_linear_BlueCoat.png)
    }
}

@TabNavigator {
    @Tab("Circular") {
        @Video(source: "component_progress_indicator_circular_BlueCoat.video")
    }
    @Tab("Linear") {
        @Video(source: "component_progress_indicator_linear_BlueCoat.video")
    }
}

### Layouts

#### Colored surface

![A colored surface component in light and dark modes with BlueCoat theme](component_coloredSurface_BlueCoat.png)

### Foundations

#### Typography

![A typography component in light and dark modes with BlueCoat theme](component_typography_heading_BlueCoat.png)

## Topics

### Group

- ``BlueCoatTheme``
- ``BlueCoatBrandColorRawTokens``
- ``BlueCoatBrandFontRawTokens``
