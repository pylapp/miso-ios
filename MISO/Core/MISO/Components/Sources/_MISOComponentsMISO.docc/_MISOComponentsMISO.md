# ``MISOComponentsMISO``

@Metadata {
    @PageImage(purpose: icon, source: "ic_components_miso")
    @DisplayName("Components (MISO)", style: symbol)
    @TitleHeading("Library")
}

The catalog of all components provided by MISO, not inherited from OUDS.

## Overview

Here are the original components.

## Display confettis (like easter eggs)

Easter eggs are fun, and confettis too.

```swift
    someView
    .overlay {
        if showConfetti { // Toggle this boolea flag with your logic
            MISOConfettiView(isActive: $showConfetti)
            .ignoresSafeArea()
            .allowsHitTesting(false)
        }
    } 
```

## Splash screen

A splash screen is an element to display quickly in fullscreen when the app starts, with the app logo centered.

```swift
    MISOSplashScreenView(appLogo: Image(decorative: "Logo")) {
        // Action to done with splash screen is done
    }    
```
