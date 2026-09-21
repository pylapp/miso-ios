---
name: miso-ios-components-exclusive
description: Usage and code examples for MISO-exclusive components (not inherited from the OUDS upstream project) — MISOOnboardingView / MISOOnboardingPage (full-screen onboarding carousel), MISOSplashScreenView (launch splash screen), MISOConfettiView (easter egg confetti overlay), and the app-info sections MISOAppAboutSection (version/build/tag), MISOAppEditorSection (editor name + website + Mastodon links) and MISOAppLegalSection (privacy/terms links). Load the miso-ios-framework-usage skill first for imports, themes, tokens, and image rules.
license: MIT
---

# MISO Exclusive components

> These components live under `MISOComponentsMISO` (`MISO/Core/MISO/Components/Sources/`) and are
> specific to MISO — unlike the other `miso-ios-components-*` skills, which document components
> inherited from the OUDS upstream project (`MISOComponents`, `MISO/Core/OUDS/Components/Sources/`).

> Prerequisite: load `miso-ios-framework-usage` first for imports, themes,
> token usage and image rules (`MISOImage`, `// swiftlint:disable:next accessibility_label_for_image`).

## MISOOnboardingView

Full-screen onboarding carousel with swipeable pages and a navigation bar (back / next / done).

> Availability: not available on tvOS.

```swift
import MISOComponentsMISO

private var onboardingPages: [MISOOnboardingPage] {
    [
        MISOOnboardingPage(
            image: Image(systemName: "hand.wave"),
            title: Text("onboarding.page1.title"),
            description: Text("onboarding.page1.description")),
        MISOOnboardingPage(
            image: Image(systemName: "arrow.left.arrow.right"),
            title: Text("onboarding.page2.title"),
            description: Text("onboarding.page2.description")),
        MISOOnboardingPage(
            image: Image(systemName: "cpu"),
            title: Text("onboarding.page3.title"),
            description: Text("onboarding.page3.description")),
    ]
}

MISOOnboardingView(pages: onboardingPages) {
    // Action to run when the onboarding is dismissed (last page's "Done" button)
}
```

Notes:
- Pages are swipeable (drag gesture) and animated with the built-in back/next navigation bar.
- The last page's button always uses the `.strong` appearance; earlier "Back"/"Next" buttons use `.brand`.
- Background and content colors adapt automatically to the color scheme via theme tokens.

---

## MISOSplashScreenView

Full-screen splash view displayed for ~1 second at app launch, with a debug/beta build banner.

```swift
import MISOComponentsMISO

MISOSplashScreenView(appLogo: Image(decorative: "Logo")) {
    // Action to run once the splash screen is dismissed (fade-out completed)
}

// Custom logo size (defaults to 120x120)
MISOSplashScreenView(appLogo: Image(decorative: "Logo"), logoWidth: 96, logoHeight: 96) {}
```

Notes:
- Displays for 1 second then fades out (0.4s) before calling `onDismissed`.
- In `DEBUG` builds, shows a `MISOAlertMessage` "debug" banner at the bottom.
- In release builds, shows a "beta" banner if `Info.plist` key `MISO_ForApp_BuildType` contains "testflight" (case-insensitive).

---

## MISOConfettiView

Full-screen confetti burst (~120 particles, `TimelineView` + `Canvas`), triggered by an external
boolean binding. Used as an easter egg overlay.

> Availability: not available on macOS, tvOS, visionOS, watchOS.

```swift
import MISOComponentsMISO

@State private var showConfetti = false

someView
    .overlay {
        if showConfetti {
            MISOConfettiView(isActive: $showConfetti)
                .ignoresSafeArea()
                .allowsHitTesting(false)
        }
    }
```

Notes:
- The effect lasts 3 seconds then automatically resets the bound `isActive` to `false`.
- Ignores hit-testing — underlying controls stay interactive.
- Fires haptics on launch (`UINotificationFeedbackGenerator.success`) plus three timed medium impacts.
- Posts `Notification.Name.easterEggConfettiFound` when triggered — observe it to track easter egg discovery (this is how `MISOAppDetailsSheet`, from the `miso-ios-modules-exclusive` skill, reports the confetti easter egg).

---

## App info sections

> These three views live under `MISOComponentsMISO` (`MISO/Core/MISO/Components/Sources/AppInfo/`).
> They are the building blocks assembled by `MISOAppDetailsSheet` (see the `miso-ios-modules-exclusive`
> skill), but each one can also be embedded standalone in any settings screen.

Shared data types (also in `MISOComponentsMISO`):

```swift
/// (logo: Image, url: URL) — used for both `website` and `mastodon` in MISOAppEditor
public typealias WebSiteReference = (logo: Image, url: URL)

public struct MISOAppAbout {
    public init(version: String, buildNumber: String, buildInfo: BuildTypeInfo, releaseTag: String? = nil)
}

public struct MISOAppEditor {
    public init(name: String, website: WebSiteReference, mastodon: WebSiteReference)
}

public struct MISOAppLegalInfo {
    public init(privacyStatement: URL, termsOfUses: URL)
}

public struct MISOAppSupportInfo {
    public init(bugReport: URL, sourceCode: URL)
}
```

### MISOAppAboutSection

Displays app version, build number and an optional release tag, plus a hidden tappable build-type
row (tap 8 times to trigger the confetti easter egg via the bound flag).

> Availability: iOS 15+. Not available on macOS, tvOS, visionOS, watchOS.

```swift
import MISOComponentsMISO

@State private var showConfetti = false

MISOAppAboutSection(
    appAbout: MISOAppAbout(
        version: BuildInfo.appVersion,
        buildNumber: BuildInfo.buildNumber,
        buildInfo: BuildInfo.buildTypeInfo,
        releaseTag: BuildInfo.releaseTag),
    actionTriggered: $showConfetti)
```

Notes:
- `actionTriggered` is a `Binding<Bool>` flipped to `true` internally when the hidden build-type row action fires; pair it with a `MISOConfettiView` overlay to reproduce the `MISOAppDetailsSheet` easter egg.
- `releaseTag` is optional — its row is only shown when non-`nil`.

### MISOAppEditorSection

Displays the app editor's name plus two links (website, Mastodon profile), each opened in-app via
`SafariView`.

> Availability: iOS 15+. Not available on macOS, tvOS, visionOS, watchOS.

```swift
import MISOComponentsMISO

let myAppEditor = MISOAppEditor(
    name: "Some Editor",
    website: (logo: Image("ic_website"), url: websiteURL),
    mastodon: (logo: Image("ic_mastodon"), url: mastodonURL))

MISOAppEditorSection(appEditor: myAppEditor)
```

Notes:
- Manages its own in-app browser (`SafariView`) state — no external configuration needed.
- Both links are rendered as `MISOLink` with the corresponding logo image.

### MISOAppLegalSection

An embeddable section with links to the privacy policy and terms of use, opened in-app via `SafariView`.

> Availability: iOS 15+. Not available on macOS, tvOS, visionOS, watchOS.

```swift
import MISOComponentsMISO

MISOAppLegalSection(
    appLegal: MISOAppLegalInfo(
        privacyStatement: URL(string: "https://example.com/privacy")!,
        termsOfUses: URL(string: "https://example.com/terms")!))
```

Notes:
- Manages its own in-app browser (`SafariView`) state — no external configuration needed.
- Typically embedded inside a settings screen, alongside `MISOAppEditorSection` and `MISOAppAboutSection`.
