# ``MISOModulesAppServices``

@Metadata {
    @PageImage(purpose: icon, source: "ic_modules_miso_appservices")
    @DisplayName("MISO Module App Services", style: symbol)
    @TitleHeading("Library")
}

A module which permits to check app state and display information about it.

## Overview

Applications are exposed through the App Store, and updates can be available.
In addition, applications have build informations and maintainers, and these informations can be displayed.

## Check for App Store updates

In your view, instanciate the dedicated view model:

```swift
    @State private var appStoreVM = MISOAppStoreUpdateViewModel(appStoreID: APP_STORE_ID, country: COUNTRY_CODE)    
```

It will automatically check for App Store updates.

Then, in your view:

```swift
    var body: some View {
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
    }    
```

## App details sheet

![App detail sheet with FoxyRough theme and Brut to Suit app](image_appdetails_FoxyRough_BrutToSuit)

Applications have a build number, a version and also a build type (debug, beta, stable).
Open source applications should also open their bug tracker and redirect the users to their source code.
Applications should also have privacy statement and terms of use documents, and information about
their editor. The `MISOAppDetailsSheet` displays all of that at once, assembling the
`MISOAppAboutSection`, `MISOAppLegalSection` and `MISOAppEditorSection` views from the
`MISOComponentsMISO` module.

```swift
    let myAppLegalInfo = MISOAppLegalInfo(privacyStatement: URL(string: somePrivacyDocumentUrl)!,
                                          termsOfUses: URL(string: someToSDocumentUrl)!)
    let myAppSupportInfo = MISOAppSupportInfo(bugReport: issueTrackerURL, sourceCode: forgeURL)
    let myAppEditor = MISOAppEditor(name: someName, website: websiteReference, mastodon: mastodonReference)

    SomeView()
        .sheet(isPresented: $isAboutSheetPresented) {
            MISOAppDetailsSheet(appIcon: myAppLogoImage,
                                legalInfo: myAppLegalInfo,
                                supportInfo: myAppSupportInfo,
                                editorInfo: myAppEditor)
        }
```

Several elements msut be defined in the app Info.plist:
- **CFBundleDisplayName:** App name
- **CFBundleShortVersionString**: Marketing version of the app
- **CFBundleVersion:** Build number of the app
- **MISO_ForApp_ReleaseTag**: The release tag, e.g. 1.2.3-rc.4
- **MISO_ForApp_BuildType**: In "debug", "beta (TestFlight)", and "stable (AppStore)"
