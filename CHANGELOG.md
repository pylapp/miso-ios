# MISO iOS library changelog

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased](hhttps://github.com/pylapp/miso-ios/releases/compare/1.1.0...develop)

### Added

- `categorical tag` component (Orange-OpenSource/ouds-ios#1782)

### Changed

- `typography` component to version v1.1.0 (Orange-OpenSource/ouds-ios#1722)
- `alert message` component to version v1.2.0 (Orange-OpenSource/ouds-ios#1659)

### Fixed

- Use of `Menlo` font family for `code` typography through update of `familyCode` font semantic token (Orange-OpenSource/ouds-ios#1799)

## [3.1.0](https://github.com/Orange-OpenSource/ouds-ios/compare/3.0.0...3.1.0) - 2026-10-02

### Added

- `White label` theme (Orange-OpenSource/ouds-ios#1772)

### Changed

- Swift Package `SwiftFormat` from v0.63.0 to v0.63.1
- Ruby Gem `fastlane` from v2.240.0 to v2.240.1
- `excon` transitive RubyGem from v1.7.1 to v1.7.2b (CVE-2026-54171)
- `Ruby` version from v4.0.6 to v4.0.7 for `build-and-test` andg `build-xcframework` workflows
- GitHub Actions `actions/upload-artifact` action from v4.6.2 to v7.0.1 for `build-xcframework` workflow
- GitHub Actions `github/codeql-action/upload-sarif` action from v4.38.0 to v4.38.2 for `scorecard` workflow
- GitHub Actions `ruby/setup-ruby` action from v1.321.0 to v1.327.0 for `build-and-test` and `build-xcframework` workflows
- `button` component to version v3.4.0 (Orange-OpenSource/ouds-ios#1653)
- Make product exportable and usable as XCFramework (Orange-OpenSource/ouds-ios#1767)
- In `circular progress indicator`, set helper text in two texts to fix alignment (Orange-OpenSource/ouds-ios#1753)
- `list item` component to version v1.2.0 (Orange-OpenSource/ouds-ios#1714)

### Fixed

- For `radio` components, bad token for unselected indicator (Orange-OpenSource/ouds-ios#1779)
- For `text input` component, the label is duplicated if on two lines (Orange-OpenSource/ouds-ios#1763)
- **BREAKING**: missing `maxWidthBoxedText` token in `SizeMultipleSemanticTokens` (Orange-OpenSource/ouds-ios#1714)

## [1.1.0](https://github.com/pylapp/miso-ios/releases/tag/1.0.0) - 2026-09-22

### Added

- Onboarding view
- Splash screen component
- Developer details in app details view in AppServices module 
- App details view in AppServices module 
- Conffetti view in AppServices module
- View to display legal information in AppServices module
- App Store update check in AppServices module
- `FoxyRough` theme

## [1.0.0](https://github.com/pylapp/miso-ios/releases/tag/1.0.0) - 2026-09-16

### Changed
    
- Migration from MISO iOS codebase to MISO iOS
