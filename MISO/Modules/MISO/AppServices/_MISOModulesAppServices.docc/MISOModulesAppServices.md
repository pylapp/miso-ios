# ``MISOModulesAppServices``

@Metadata {
    @PageImage(purpose: icon, source: "ic_modules_miso_appservices")
    @DisplayName("Modules (MISO)", style: symbol)
    @TitleHeading("Library")
}

A module which permits to check app state and display information about it.

## Overview

Applications are exposed through the App Store, and updates can be available.
In addition, applications have build informations and maintainers, and these informations can be displayed.

## Check for App Store updates

In your view, instanciate the dedicated view model:

```swift
    @State private var appStoreVM = AppStoreUpdateViewModel(appStoreID: APP_STORE_ID, country: COUNTRY_CODE)    
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
