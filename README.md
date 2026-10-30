<p align="center">
<img src="./images/logo-MISO.png" alt="Logo of MISO tool" height="150" />
</p>

<h1 align="center">MISO iOS</h1>

<p align="center">
  🍜 MISO is a library of SwiftUI components (forked from ouds-ios), themes and tools for iOS app development.
  <br>
  🐙 Miso Is So {Open | Obvious | Original | Or not}
  <br>
  <a href="https://github.com/pylapp/miso-ios/issues/new?template=bug_report.yml" title="Open an issue on GitHub">Report bug</a>
  ·
  <a href="https://github.com/pylapp/miso-ios/wiki" title="Swift library wiki">Wiki</a>
  ·
  <a href="https://github.com/pylapp/miso-ios-demo" title="Demo app GitHub project of MISO">Demo app</a>
  ·
  <a href="https://github.com/pylapp/miso-ios-documentation" title="MISO iOS Swift Package Documentation">Documentation</a>    
</p>

<p align="center">
<a href="https://github.com/pylapp/miso-ios/actions/workflows/build-and-test.yml" title="Build and test status"><img src="https://github.com/pylapp/miso-ios/actions/workflows/build-and-test.yml/badge.svg" alt="Build and test status"></a>
&nbsp;
<a href="https://github.com/pylapp/miso-ios/actions/workflows/swiftpolyglot.yml" title="SwiftPolyglot status"><img src="https://github.com/pylapp/miso-ios/actions/workflows/swiftpolyglot.yml/badge.svg" alt="SwiftPolyglot status"></a>
&nbsp;
<a href="https://github.com/pylapp/miso-ios/actions/workflows/swiftlint.yml" title="SwiftLint status"><img src="https://github.com/pylapp/miso-ios/actions/workflows/swiftlint.yml/badge.svg" alt="SwiftLint status"></a>
</p>

## ⚙️ Status

[![MIT license](https://img.shields.io/github/license/pylapp/miso-ios?style=for-the-badge)](https://github.com/pylapp/miso-ios/blob/main/LICENSE)

[![Versions](https://img.shields.io/github/v/release/pylapp/miso-ios?label=Last%20version&style=for-the-badge)](https://github.com/pylapp/miso-ios/releases)
[![Still maintained](https://img.shields.io/maintenance/yes/2026?style=for-the-badge)](https://github.com/pylapp/miso-ios/issues?q=is%3Aissue+is%3Aclosed)

[![Code size](https://img.shields.io/github/languages/code-size/pylapp/miso-ios?style=for-the-badge)](https://github.com/pylapp/miso-ios)
[![Opened issues](https://img.shields.io/github/issues-raw/pylapp/miso-ios?style=for-the-badge)](https://github.com/pylapp/miso-ios/issues)

![iOS 15](https://img.shields.io/badge/iOS-15-FF1AB2?style=for-the-badge)
![iPadOS 15](https://img.shields.io/badge/iPadOS-15-FF1AB2?style=for-the-badge)
![macOS 13](https://img.shields.io/badge/macOS-13-FF1AB2?style=for-the-badge)
![visionOS 1](https://img.shields.io/badge/visionOS-1-FF1AB2?style=for-the-badge)
![watchOS 11](https://img.shields.io/badge/watchOS-11-FF1AB2?style=for-the-badge)
![tvOS 16](https://img.shields.io/badge/tvOS-16-FF1AB2?style=for-the-badge)

[[![Xcode 27.1](https://img.shields.io/badge/Xcode-27.1-blue?style=for-the-badge)](https://developer.apple.com/documentation/xcode-release-notes/xcode-27_1-release-notes)

## ℹ️ About MISO

MISO is a recursive acronym which can mean for example *Miso Is So Open*. Or *Obvious*. Or *Original*. We don't care in the end.
Miso soup is also tasty. 🍜

> [!CAUTION]
> This Swift Package is dedicated to SwiftUI. UIKit and other frameworks are not supported.

> [!NOTE]
> Main targets are iOS / iPadOS, and we do our best to support macOS, visionOS, tvOS and watchOS!

## 🚀 Quick start

> [!TIP]
> Documentation on GitHub Pages will come soon.

### Choose your version

You can find available releases on [GitHub releases](https://github.com/pylapp/miso-ios/releases). 

### Add the dependency (Swift Package Manager)

First, you must add as _package dependency_ of your _project_ the URL of this _Swift Package_ GitHub repository:

```text
https://github.com/pylapp/miso-ios
```

You can choose the _dependency rule_ you want. Keep in mind MISO iOS releases are frozen and are based on semantic versioning.

In your Xcode _targets_, add the libraries you need. Everything is splitted so as to let users choose the content to embed they want.

### Add the dependency (XCFramework)

Get the XCFramework ZIP file from the [GitHub releases](https://github.com/pylapp/miso-ios/releases) of the version you want.
Uncompress the ZIP, and if you want check its checksum or cryptographic signature.
Otherwise uncompress the XCFramework ZIP, and drag and drop all the XCFrameworks (~10) in your Xcode project.
Associate them to the target(s) you want.
And, in your source code, when you use MISO items, import **MISOSwiftUI**.

> [!NOTE]
> XCFramework is not the prefered solution to use MISO
> Thus the XCFramework available are tailored for iOS platform.
> For more evolutions feel free to contact the maintainers.

### Instanciate and inject theme

In the root view of your app, add the `MISOThemeableView` with inside the _theme_ object you want to apply.
You can instanciate the theme object on the fly, but only once.

```swift
@main
struct YourApp: App {

    var body: some Scene {
        WindowGroup {
            MISOThemeableView(theme: theTheme) {
              AppRootView() // Add your app root view here
            }
        }
    }
}
```

### Get the theme

If you need to get configuration details from the theme (colors, dimensions, etc.), get the theme through _environment object_:

```swift
  @Environment(\.theme) var theme
```

## 📦 Content

> [!TIP]
> Releases are immutable and in most of time cryptographically signed (commits, tags and artifacts).
> You can verify their integrity with commands from GPG tool of GitHub CLI client.

## 📦 Binary distribution (XCFramework)

In addition to the standard Swift Package distribution, MISO is also published as a **dynamic XCFramework** for the `MISOSwiftUI` umbrella product
This distribution is intended to solve the duplication / symbol-conflict problem that appears when several third-party XCFrameworks each embed their own copy of MISO in the same application.

Unzip the XCFramework archive, add all ~10 XCFrameworks to your Xcode project, embed and sign only `MISOSwiftUI`, and import that dependency.

## 🪲 Bugs, feature requests and discussions

Have a bug or a component request? Please first search for existing and closed issues. If your problem or idea is not addressed yet, [please open a new issue](https://github.com/pylapp/miso-ios/issues/new/choose).

If you want to share ideas or discuss about API, features, components or other topics, you should first open a new discussion.
[Q&A](https://github.com/pylapp/miso-ios/discussions/categories/q-a) is more dedicated for help, otherwise feel free to open or update a topic in [Ideas](https://github.com/pylapp/miso-ios/discussions/categories/ideas).
Keep in mind internal or sensitive discussions must be in internal tools, not public ones.

If your discussions, requests or issues are about the demo application, [use instead its GitHub project](https://github.com/pylapp/miso-ios-demo).

## 🤝 Contributing

Please read through our [contributing guidelines](https://github.com/pylapp/miso-ios/blob/main/.github/CONTRIBUTING.md). Included are directions for opening issues, coding standards, and notes on development. More technical details are available also in the [DEVELOP](https://github.com/pylapp/miso-ios/blob/main/.github/DEVELOP.md) file.

## 🔒 Data and privacy

The MISO is a Software Development Kit (SDK) that helps developers to create mobile applications more easily and quickly with predefined components and tools.
As such:
- this SDK does not handle any personal data
- this SDK does not require any device permission to work

## ⚖️ Copyright and license

> [!IMPORTANT]
> This project is a fork from [Orange-OpenSource/ouds-ios](https://github.com/Orange-OpenSource/ouds-ios),
> but with a lot of refactoring to make the product lighter and not locked
> by proprietary or branded assets.
> MISO does not replace OUDS, and does not belong to Orange Group.
> The MIT license of MISO comes from OUDS MIT license.

Code released under the [MIT License](https://github.com/pylapp/miso-ios/blob/main/LICENSES/LICENSE-MIT.txt).
Images, illustrations and videos are under [CC0 1.0 Universal](https://github.com/pylapp/miso-ios/blob/main/LICENSES/LICENSE-CC0.txt)

> [!NOTE]
> Copyright Orange SA (for OUDS specific elements)

> [!NOTE]
> Copyright Pierre-Yves Lapersonne (for MISO)
