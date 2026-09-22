---
name: miso-ios-modules-exclusive
description: Usage and code examples for the MISO-exclusive AppServices module (not inherited from the OUDS upstream project) — MISOAppDetailsSheet (About sheet assembling app info, legal links, editor links and a confetti easter egg) and MISOAppStoreUpdateViewModel (App Store update check via iTunes lookup). Load the miso-ios-framework-usage skill first for imports, themes, tokens, and image rules.
license: MIT
---

# MISO Exclusive module — AppServices

> These types live under `MISOModulesAppServices` (`MISO/Modules/MISO/AppServices/Sources/`) and are
> specific to MISO — there is no equivalent OUDS-inherited "modules" skill; this whole family is exclusive to MISO.

> Prerequisite: load `miso-ios-framework-usage` first for imports, themes,
> token usage and image rules (`MISOImage`, `// swiftlint:disable:next accessibility_label_for_image`).
> Also load the `miso-ios-components-exclusive` skill for `MISOConfettiView` (used internally by
> `MISOAppDetailsSheet`) and for `MISOAppAboutSection` / `MISOAppEditorSection` / `MISOAppLegalSection`
> (the three sub-views assembled by `MISOAppDetailsSheet`, and their `MISOAppAbout` / `MISOAppEditor` /
> `MISOAppLegalInfo` / `MISOAppSupportInfo` data types) — those live in `MISOComponentsMISO`, not in this module.

## MISOAppDetailsSheet

A sheet with app details (icon, version, build, release tag), a legal section (privacy/terms links),
an editor section (name + website + Mastodon links), top/bottom toolbars (close, bug report, source
code, system app settings), and a hidden confetti easter egg (tap the build-type chip 8 times).

Internally it assembles `MISOAppAboutSection`, `MISOAppLegalSection` and `MISOAppEditorSection`
(from `MISOComponentsMISO`, see the `miso-ios-components-exclusive` skill) — you don't call those
sub-views yourself when using the sheet, only the data types they need.

> Availability: iOS 17+. Not available on macOS, tvOS, visionOS, watchOS.

Requires the following `Info.plist` keys:
- `CFBundleDisplayName` — app name
- `CFBundleShortVersionString` — marketing version
- `CFBundleVersion` — build number
- `MISO_ForApp_ReleaseTag` — release tag, e.g. `1.2.3-rc.4` (optional)
- `MISO_ForApp_BuildType` — one of `"debug"`, `"beta (TestFlight)"`, `"stable (AppStore)"`

```swift
import MISOComponentsMISO      // MISOAppLegalInfo, MISOAppSupportInfo, MISOAppEditor
import MISOModulesAppServices  // MISOAppDetailsSheet

let myAppLogoImage = Image(decorative: "AppLogo")
let myAppLegalInfo = MISOAppLegalInfo(
    privacyStatement: URL(string: "https://example.com/privacy")!,
    termsOfUses: URL(string: "https://example.com/terms")!)
let myAppSupportInfo = MISOAppSupportInfo(bugReport: issueTrackerURL, sourceCode: forgeURL)
let myAppEditor = MISOAppEditor(
    name: "Some Editor",
    website: (logo: Image("ic_website"), url: websiteURL),
    mastodon: (logo: Image("ic_mastodon"), url: mastodonURL))

SomeView()
    .sheet(isPresented: $isAboutSheetPresented) {
        MISOAppDetailsSheet(
            appIcon: myAppLogoImage,
            legalInfo: myAppLegalInfo,
            supportInfo: myAppSupportInfo,
            editorInfo: myAppEditor)
    }
```

Notes:
- `WebSiteReference` is `(logo: Image, url: URL)` — used for both `website` and `mastodon` in `MISOAppEditor`.
- App version, build number, build tag and build type are read internally (no need to pass them);
  only legal, support and editor info are supplied by the caller.
- Bug report / source code / editor / legal links all open in-app via a `SafariView` sheet.
- The system app settings toolbar item opens `UIApplication.openSettingsURLString`.
- Tapping the build-type chip 8 times triggers `MISOConfettiView` and posts `Notification.Name.easterEggConfettiFound`.

---

## MISOAppStoreUpdateViewModel

`@Observable` view model that checks the App Store (iTunes lookup API) for a newer app version and
drives an update alert.

> Availability: iOS 17+, macOS 14+, tvOS 17+.

```swift
import MISOModulesAppServices

@State private var appStoreVM = MISOAppStoreUpdateViewModel(appStoreID: "6783789743", country: "fr")

SomeView()
    .alert(appStoreVM.alertTitle, isPresented: $appStoreVM.showUpdateAlert) {
        Button("Dismiss", role: .cancel) {}
        if let url = appStoreVM.appStoreURL {
            Button("Go to App Store") {
                UIApplication.shared.open(url)
            }
        }
    } message: {
        Text(appStoreVM.alertMessage)
    }
```

Notes:
- The check runs automatically on `init` (async `Task`); `showUpdateAlert` flips to `true` only if a newer version is found.
- `appStoreID` is the numeric App Store identifier (e.g. `6783789743`); `country` is a lowercase ISO country code (e.g. `"fr"`).
- `releaseNoteLimit` (default `MISOAppStoreUpdateService.RELEASE_NOTE_MAX_COUNT_LIMIT`, i.e. `300`) truncates `alertMessage` with an ellipsis; falls back to a localized message when release notes are empty.
- Version comparison is purely numeric, component by component (e.g. `"1.5.0"` vs `"1.4.0"`); local version is read from `CFBundleShortVersionString`.
