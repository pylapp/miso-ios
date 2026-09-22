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

@TabNavigator {
    @Tab("BlueCoat") {
        ![Plenty of confettis raining in the screen with BlueCoat theme and Brut to Suit app](image_confettis_BlueCoat_BrutToSuit.png)
    }
    @Tab("FoxyRough") {
        ![Plenty of confettis raining in the screen with FoxyRough theme and Brut to Suit app](image_confettis_FoxyRough_BrutToSuit.png)
    }
}

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

@TabNavigator {
    @Tab("BlueCoat") {
        ![Splash screen in debug mode with BlueCoat theme and Brut to Suit app](image_splashscreen_BlueCoat_BrutToSuit.png)
    }
    @Tab("FoxyRough") {
        ![Splash screen in debug mode with FoxyRough theme and Brut to Suit app](image_splashscreen_FoxyRough_BrutToSuit.png)
    }
}

A splash screen is an element to display quickly in fullscreen when the app starts, with the app logo centered.

```swift
    MISOSplashScreenView(appLogo: Image(decorative: "Logo")) {
        // Action to done with splash screen is done
    }    
```

## Onboarding

@TabNavigator {
    @Tab("BlueCoat") {
        ![Onboarding screen with BlueCoat theme and Brut to Suit app](image_onboarding_BlueCoat_BrutToSuit.png)
    }
    @Tab("FoxyRough") {
        ![Onboarding screen with FoxyRough theme and Brut to Suit app](image_onboarding_FoxyRough_BrutToSuit.png)
    }
}

Onboarding users to the app can be very useful to introduce key concepts and features.

```swift
    // Define the pages
    private var onboardingPages: [MISOOnboardingPage] {
        [
         MISOOnboardingPage(
            image: Image(systemName: "hand.wave"),
            itle: Text("onboarding.page1.title"),
            description: Text("onboarding.page1.description")),
         MISOOnboardingPage(
            image: Image(systemName: "arrow.left.arrow.right"),
            title: Text("onboarding.page2.title"),
            description: Text("onboarding.page2.description")),
         MISOOnboardingPage(
            image: Image(systemName: "cpu"),
            title: Text("onboarding.page3.title"),
             description: Text("onboarding.page3.description"))
         ]
    }

    // Add to the view
    MISOOnboardingView(pages: onboardingPages) {
        // Action to do when the onboarding is done
    }
```

An optional `showProgressIndicator` flag (`false` by default) displays a `MISOLinearProgressIndicator`
above the navigation bar, filled according to the current page position (e.g. page 1 of 4 fills
the indicator to 25%). The progress is also vocalized to VoiceOver as "Page X of Y". Its layout space
is reserved from the view's first display to avoid any reflow of the page content; it only fades in
after a short delay.

```swift
    MISOOnboardingView(pages: onboardingPages, showProgressIndicator: true) {
        // Action to do when the onboarding is done
    }
```

## Display app about information

@TabNavigator {
    @Tab("BlueCoat") {
        ![App build info in debug mode with BlueCoat theme and Brut to Suit app](image_buildinfo_BlueCoat_BrutToSuit.png)
    }
    @Tab("FoxyRough") {
        ![App build info in debug mode with FoxyRough theme and Brut to Suit app](image_buildinfo_FoxyRough_BrutToSuit.png)
    }
}

Applications have a build number, a version and also a build type (debug, beta, stable), plus an
optional release tag. The `MISOAppAboutSection` view displays them, and also drives a hidden action
(tap the build-type row 8 times) that can be wired to a `MISOConfettiView` easter egg.

```swift
    @State private var showConfetti = false

    MISOAppAboutSection(
        appAbout: MISOAppAbout(
            version: BuildInfo.appVersion,
            buildNumber: BuildInfo.buildNumber,
            buildInfo: BuildInfo.buildTypeInfo,
            releaseTag: BuildInfo.releaseTag),
        actionTriggered: $showConfetti)
```

## Display app editor information

@TabNavigator {
    @Tab("BlueCoat") {
        ![App editor info in debug mode with BlueCoat theme and Brut to Suit app](image_editorinfo_BlueCoat_BrutToSuit.png)
    }
    @Tab("FoxyRough") {
        ![App editor info in debug mode with FoxyRough theme and Brut to Suit app](image_editorinfo_FoxyRough_BrutToSuit.png)
    }
}

Applications can credit their editor with a name and links to their website and Mastodon profile.
The `MISOAppEditorSection` view displays them, opening the links in-app.

```swift
    let myAppEditor = MISOAppEditor(name: someName, website: websiteReference, mastodon: mastodonReference)

    MISOAppEditorSection(appEditor: myAppEditor)
```

## Display app legal information

@TabNavigator {
    @Tab("BlueCoat") {
        ![App legal info in debug mode with BlueCoat theme and Brut to Suit app](image_legalinfo_BlueCoat_BrutToSuit.png)
    }
    @Tab("FoxyRough") {
        ![App legal info in debug mode with FoxyRough theme and Brut to Suit app](image_legalinfo_FoxyRough_BrutToSuit.png)
    }
}

Applications should have privacy statement and terms of use documents.
They can be displayed through a dedicated view.

```swift
    MISOAppLegalSection(
        appLegal: MISOAppLegalInfo(privacyStatement: URL(string: somePrivacyDocumentUrl)!,
                                   termsOfUses: URL(string: someToSDocumentUrl)!))
```

