# Components

@Metadata {
    @PageImage(purpose: icon, source: "ic_logo_miso")
    @PageImage(purpose: card, source: "ic_logo_miso")
}

_Components_ are the `View` objects you can add in the views of your apps, like buttons, links, cards etc.

## How to use components

Import the product of components, and use the component you want.
Of course you must use in your root view the <doc:/MISOThemesContract/MISOThemeableView> with the suitable theme to asign it in environment variable so as to allow components to load their tokens:

```swift
// The theme can be BlueCoatTheme or your own
MISOThemeableView(theme: BlueCoatTheme()) {
        
}
``` 

You can get more details about _Components_ with the [MISOComponents documentation](https://ios.unified-design-system.orange.com/documentation/misocomponents/).
