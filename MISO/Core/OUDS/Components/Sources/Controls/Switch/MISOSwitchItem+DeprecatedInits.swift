// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import SwiftUI

/// Deprecated initializers of ``MISOSwitchItem``.
///
/// The four initializers below (label as `String` or `LocalizedStringKey` × `errorText` as `String` or `AttributedString`)
/// are deprecated in favor of the two unified initializers which accept an ``MISOTextualContent`` for the `errorText`.
///
/// They forward to the new unified initializers so existing call sites keep working unchanged;
/// only a deprecation warning is emitted.
///
/// See `MIGRATION.md` section `v3.0.0 → v3.2.0` for the full migration guide.
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
extension MISOSwitchItem { // TODO: v4 - Remove these old inits

    // swiftlint:disable function_default_parameter_at_end

    /// Creates a switch with a `String` label and an optional `String` error text.
    ///
    /// - Parameters:
    ///   - label: The main label text of the switch, must not be empty
    ///   - isOn: A binding to a property that determines whether the toggle is on or off
    ///   - description: An additional helper text, a description, should not be empty
    ///   - image: An optional ``MISOImage``. Default set to `nil`.
    ///   - isReversed: `true` if the switch indicator must be in trailing position, `false` otherwise. Default to `true`
    ///   - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - errorText: An optional error message to display at the bottom. Ignored if `isError` is `false`.
    ///   - isReadOnly: True if component is in read only, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view, by default set to `false`
    ///   - constrainedMaxWidth: When `true`, the item width is constrained to a maximum value defined by the design system. Defaults to `false`.
    @available(*, deprecated, message: "Use init with an MISOTextualContent errorText. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(_ label: String,
                isOn: Binding<Bool>,
                description: String? = nil,
                image: MISOImage? = nil,
                isReversed: Bool = true,
                isError: Bool = false,
                errorText: String? = nil,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                constrainedMaxWidth: Bool = false)
    {
        self.init(label,
                  isOn: isOn,
                  description: description,
                  image: image,
                  isReversed: isReversed,
                  isError: isError,
                  errorText: errorText.map { .raw($0) },
                  isReadOnly: isReadOnly,
                  hasDivider: hasDivider,
                  constrainedMaxWidth: constrainedMaxWidth)
    }

    /// Creates a switch with a `String` label and a rich `AttributedString` error text.
    ///
    /// - Parameters:
    ///   - label: The main label text of the switch, must not be empty
    ///   - isOn: A binding to a property that determines whether the toggle is on or off
    ///   - description: An additional helper text, a description, should not be empty
    ///   - image: An optional ``MISOImage``. Default set to `nil`.
    ///   - isReversed: `true` if the switch indicator must be in trailing position, `false` otherwise. Default to `true`
    ///   - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - errorText: An error message to display at the bottom as rich `AttributedString`. Ignored if `isError` is `false`.
    ///   - isReadOnly: True if component is in read only, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view, by default set to `false`
    ///   - constrainedMaxWidth: When `true`, the item width is constrained to a maximum value defined by the design system. Defaults to `false`.
    @available(*, deprecated, message: "Use init with an MISOTextualContent errorText. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(_ label: String,
                isOn: Binding<Bool>,
                description: String? = nil,
                image: MISOImage? = nil,
                isReversed: Bool = true,
                isError: Bool = false,
                errorText: AttributedString,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                constrainedMaxWidth: Bool = false)
    {
        self.init(label,
                  isOn: isOn,
                  description: description,
                  image: image,
                  isReversed: isReversed,
                  isError: isError,
                  errorText: .rich(errorText),
                  isReadOnly: isReadOnly,
                  hasDivider: hasDivider,
                  constrainedMaxWidth: constrainedMaxWidth)
    }

    /// Creates a switch with a localized label and an optional `String` error text.
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - isOn: A binding to a property that determines whether the toggle is on or off
    ///   - description: An additional helper text, a description, should not be empty
    ///   - image: An optional ``MISOImage``. Default set to `nil`.
    ///   - isReversed: `true` if the switch indicator must be in trailing position, `false` otherwise. Default to `true`
    ///   - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - errorText: An optional error message to display at the bottom. Ignored if `isError` is `false`.
    ///   - isReadOnly: True if component is in read only, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view, by default set to `false`
    ///   - constrainedMaxWidth: When `true`, the item width is constrained to a maximum value defined by the design system. Defaults to `false`.
    @available(*, deprecated, message: "Use init with an MISOTextualContent errorText. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                isOn: Binding<Bool>,
                description: String? = nil,
                image: MISOImage? = nil,
                isReversed: Bool = true,
                isError: Bool = false,
                errorText: String? = nil,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                constrainedMaxWidth: Bool = false)
    {
        self.init(key,
                  tableName: tableName,
                  bundle: bundle,
                  isOn: isOn,
                  description: description,
                  image: image,
                  isReversed: isReversed,
                  isError: isError,
                  errorText: errorText.map { .raw($0) },
                  isReadOnly: isReadOnly,
                  hasDivider: hasDivider,
                  constrainedMaxWidth: constrainedMaxWidth)
    }

    /// Creates a switch with a localized label and a rich `AttributedString` error text.
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - isOn: A binding to a property that determines whether the toggle is on or off
    ///   - description: An additional helper text, a description, should not be empty
    ///   - image: An optional ``MISOImage``. Default set to `nil`.
    ///   - isReversed: `true` if the switch indicator must be in trailing position, `false` otherwise. Default to `true`
    ///   - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - errorText: An error message to display at the bottom as rich `AttributedString`. Ignored if `isError` is `false`.
    ///   - isReadOnly: True if component is in read only, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view, by default set to `false`
    ///   - constrainedMaxWidth: When `true`, the item width is constrained to a maximum value defined by the design system. Defaults to `false`.
    @available(*, deprecated, message: "Use init with an MISOTextualContent errorText. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                isOn: Binding<Bool>,
                description: String? = nil,
                image: MISOImage? = nil,
                isReversed: Bool = true,
                isError: Bool = false,
                errorText: AttributedString,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                constrainedMaxWidth: Bool = false)
    {
        self.init(key,
                  tableName: tableName,
                  bundle: bundle,
                  isOn: isOn,
                  description: description,
                  image: image,
                  isReversed: isReversed,
                  isError: isError,
                  errorText: .rich(errorText),
                  isReadOnly: isReadOnly,
                  hasDivider: hasDivider,
                  constrainedMaxWidth: constrainedMaxWidth)
    }

    // swiftlint:enable function_default_parameter_at_end
}
