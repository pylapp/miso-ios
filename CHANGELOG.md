# MISO iOS library changelog

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.2.0](https://github.com/pylapp/miso-ios/releases/tag/1.2.0) - 2026-10-29
## [Unreleased](https://github.com/Orange-OpenSource/ouds-ios/compare/3.2.0...develop)

### Changed

- Move to Xcode 27.1 (Orange-OpenSource/ouds-ios#1558)
- **BREAKING**: Update protocol `ColorModeMultipleSemanticTokens` with missing tokens
- **BREAKING**: No more `tuning` possible for `White Label` and `Wireframe` themes (Orange-OpenSource/ouds-ios#1829)

## [3.2.0](https://github.com/Orange-OpenSource/ouds-ios/compare/3.1.0...3.2.0) - 2026-10-21

### Added

- `list item` components inits with `MISOTextualContent` parameters for raw and attributed strings (Orange-OpenSource/ouds-ios#1812)
- `text area` component `textual` helper text and `textualError` status with `MISOTextualContent` parameter for raw, localized and attributed strings (Orange-OpenSource/ouds-ios#1797)
- `password input` components init with `MISOTextualContent` parameter for raw, localized and attributed strings in `helperText` (Orange-OpenSource/ouds-ios#1797)
- `text input` components init with `MISOTextualContent` parameter for raw, localized and attributed strings in `helperText`, and `textualError` status (Orange-OpenSource/ouds-ios#1797)
- `PIN code input` component init with `MISOTextualContent` parameter for raw, localized and attributed strings in `helperText`, and `textualError` status (Orange-OpenSource/ouds-ios#1797)
- `checkbox item indeterminate` components init with `MISOTextualContent` parameter for raw, localized and attributed strings in `errorText` (Orange-OpenSource/ouds-ios#1797)
- `radio item` components init with `MISOTextualContent` parameter for raw, localized and attributed strings in `errorText` (Orange-OpenSource/ouds-ios#1797)
- `checkbox item` components init with `MISOTextualContent` parameter for raw, localized and attributed strings in `errorText` (Orange-OpenSource/ouds-ios#1797)
- `switch item` components init with `MISOTextualContent` parameter for raw, localized and attributed strings in `errorText` (Orange-OpenSource/ouds-ios#1797)
- `alert message` components init with `MISOTextualContent` parameter for raw, localized and attributed strings (Orange-OpenSource/ouds-ios#1797)
- `bullet list` components init with `MISOTextualContent` parameter for raw, localized and attributed strings (Orange-OpenSource/ouds-ios#1797)
- `list item` components inits with `MISOTextualContent` parameters for raw, localized and attributed strings (Orange-OpenSource/ouds-ios#1812)
- Flag to display full value instead of bullets in `PIN code input` component (Orange-OpenSource/ouds-ios#1762)
- `Tuning` parameter for for Xcode previews
- Tool to detect public API breakings (Orange-OpenSource/ouds-ios#1800)
- `skeleton` on components (Orange-OpenSource/ouds-ios#1651)
- `categorical tag` component (Orange-OpenSource/ouds-ios#1782)

### Changed

- **BREAKING**: Update protocol `ColorModeMultipleSemanticTokens` with missing tokens
- Availability details for Apple platforms on public API (Orange-OpenSource/ouds-ios#1815) 
- Documentation for some components with DSM hyperlinks (Orange-OpenSource/ouds-ios#1813)
- `typography` component to version v1.1.0 (Orange-OpenSource/ouds-ios#1722)
- `alert message` component to version v1.2.0 (Orange-OpenSource/ouds-ios#1659)
- `button` component to version v3.4.0 (Orange-OpenSource/ouds-ios#1653)
- Make product exportable and usable as XCFramework (Orange-OpenSource/ouds-ios#1767)
- In `circular progress indicator`, set helper text in two texts to fix alignment (Orange-OpenSource/ouds-ios#1753)
- `list item` component to version v1.2.0 (Orange-OpenSource/ouds-ios#1714)

### Deprecated

- All six `String` / `AttributedString` initializers of `MISOListItemData`; use the new unified initializers taking `MISOListItemData.Label` + `MISOTextualContent`
- `MISOListItemData.Label.text(_:isBold:)`; use `.textual(_:isBold:)` or a string literal instead
- `MISOTextArea.HelperText` cases `.plain(_:)` and `.rich(_:)`, and `MISOTextArea.Status` cases `.error(message:)` and `.richError(message:)`; use `.textual(_:)` and `.textualError(message:)`
- All four `String` / `AttributedString` `helperText` initializers of `OUDSPasswordInput`; use the new unified initializers taking `MISOTextualContent`
- All four `String` / `AttributedString` `helperText` initializers of `OUDSTextInput`, and `OUDSTextInput.Status` cases `.error(message:)` and `.richError(message:)`; use the new unified initializers taking `MISOTextualContent` and `.textualError(message:)`
- All three `String` / `AttributedString` / `LocalizedStringKey` `helperText` initializers of `MISOPinCodeInput`, and `MISOPinCodeInput.Status` cases `.error(message:)` and `.richError(message:)`; use the new unified initializer taking `MISOTextualContent` and `.textualError(message:)`
- Both `String` `errorText` initializers of `OUDSCheckboxItemIndeterminate`; use the new unified initializers taking `MISOTextualContent`
- All four `String` / `AttributedString` `errorText` initializers of `OUDSRadioItem`; use the new unified initializers taking `MISOTextualContent`
- All four `String` / `AttributedString` `errorText` initializers of `OUDSCheckboxItem`; use the new unified initializers taking `MISOTextualContent`
- All four `String` / `AttributedString` `errorText` initializers of `OUDSSwitchItem`; use the new unified initializers taking `MISOTextualContent`
- All eight `String` / `AttributedString` initializers of `OUDSAlertMessage`; use the new unified initializers taking `MISOTextualContent` for `description` and `bulletList`
- `String`, `AttributedString` and `LocalizedStringKey` initializers of `OUDSBulletList.Item`; use the new unified initializer taking `MISOTextualContent`
- `OUDSListItemData.Label.text(_:isBold:)`; use `.textual(_:isBold:)` or a string literal instead
- All six `String` / `AttributedString` initializers of `OUDSListItemData`; use the new unified initializers taking `OUDSListItemData.Label` + `MISOTextualContent`

### Fixed

- Use of `Menlo` font family for `code` typography through update of `familyCode` font semantic token (Orange-OpenSource/ouds-ios#1799)
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
