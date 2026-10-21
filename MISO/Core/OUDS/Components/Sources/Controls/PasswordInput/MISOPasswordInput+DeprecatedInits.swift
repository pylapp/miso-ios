// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

#if !os(watchOS) && !os(tvOS)
import SwiftUI

/// Deprecated initializers of ``MISOPasswordInput``.
///
/// The four initializers below (label as `String` or `LocalizedStringKey` × `helperText` as `String` or `AttributedString`)
/// are deprecated in favor of the two unified initializers which accept an ``MISOTextualContent`` for the `helperText`.
///
/// They forward to the new unified initializers so existing call sites keep working unchanged;
/// only a deprecation warning is emitted.
///
/// See `MIGRATION.md` section `v3.0.0 → v3.2.0` for the full migration guide.
@available(iOS 15, macOS 13, visionOS 1, *)
extension MISOPasswordInput { // TODO: v4 - Remove these old inits

    // swiftlint:disable function_default_parameter_at_end

    /// Creates a password input with a `String` label and an optional `String` helper text.
    ///
    /// - Parameters:
    ///    - label: The label displayed above the password input.
    ///    - password: The pasword to display and edit
    ///    - isHiddenPassword: Flag to hide or show the password, By default set to `true`
    ///    - placeholder: The text displayed when the password input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - lockIcon: When `true`, a lock icon is displayed, defaults to `false`
    ///    - helperText: An optional helper text, by default is *nil*
    ///    - isOutlined: Controls the style of the pasword input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the password input, default set to *enabled*
    @available(*, deprecated, message: "Use init with an MISOTextualContent helperText. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(label: String,
                password: Binding<String>,
                isHiddenPassword: Binding<Bool> = .constant(true),
                placeholder: String? = nil,
                prefix: String? = nil,
                lockIcon: Bool = false,
                helperText: String? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: MISOTextInput.Status = .enabled)
    {
        self.init(label: label,
                  password: password,
                  isHiddenPassword: isHiddenPassword,
                  placeholder: placeholder,
                  prefix: prefix,
                  lockIcon: lockIcon,
                  helperText: helperText.map { .raw($0) },
                  isOutlined: isOutlined,
                  constrainedMaxWidth: constrainedMaxWidth,
                  status: status)
    }

    /// Creates a password input with a `String` label and a rich `AttributedString` helper text.
    ///
    /// - Parameters:
    ///    - label: The label displayed above the password input.
    ///    - password: The pasword to display and edit
    ///    - isHiddenPassword: Flag to hide or show the password, By default set to `true`
    ///    - placeholder: The text displayed when the password input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - lockIcon: When `true`, a lock icon is displayed, defaults to `false`
    ///    - helperText: A rich `AttributedString` helper text
    ///    - isOutlined: Controls the style of the pasword input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the password input, default set to *enabled*
    @available(*, deprecated, message: "Use init with an MISOTextualContent helperText. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(label: String,
                password: Binding<String>,
                isHiddenPassword: Binding<Bool> = .constant(true),
                placeholder: String? = nil,
                prefix: String? = nil,
                lockIcon: Bool = false,
                helperText: AttributedString,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: MISOTextInput.Status = .enabled)
    {
        self.init(label: label,
                  password: password,
                  isHiddenPassword: isHiddenPassword,
                  placeholder: placeholder,
                  prefix: prefix,
                  lockIcon: lockIcon,
                  helperText: .rich(helperText),
                  isOutlined: isOutlined,
                  constrainedMaxWidth: constrainedMaxWidth,
                  status: status)
    }

    /// Creates a password input with a localized label and an optional `String` helper text.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - password: The pasword to display and edit
    ///    - isHiddenPassword: Flag to hide or show the password, By default set to `true`
    ///    - placeholder: The text displayed when the password input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - lockIcon: When `true`, a lock icon is displayed, defaults to `false`
    ///    - helperText: An optional helper text, by default is *nil*
    ///    - isOutlined: Controls the style of the pasword input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the password input, default set to *enabled*
    @available(*, deprecated, message: "Use init with an MISOTextualContent helperText. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                password: Binding<String>,
                isHiddenPassword: Binding<Bool> = .constant(true),
                placeholder: String? = nil,
                prefix: String? = nil,
                lockIcon: Bool = false,
                helperText: String? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: MISOTextInput.Status = .enabled)
    {
        self.init(key,
                  tableName: tableName,
                  bundle: bundle,
                  password: password,
                  isHiddenPassword: isHiddenPassword,
                  placeholder: placeholder,
                  prefix: prefix,
                  lockIcon: lockIcon,
                  helperText: helperText.map { .raw($0) },
                  isOutlined: isOutlined,
                  constrainedMaxWidth: constrainedMaxWidth,
                  status: status)
    }

    /// Creates a password input with a localized label and a rich `AttributedString` helper text.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - password: The pasword to display and edit
    ///    - isHiddenPassword: Flag to hide or show the password, By default set to `true`
    ///    - placeholder: The text displayed when the password input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - lockIcon: When `true`, a lock icon is displayed, defaults to `false`
    ///    - helperText: A rich `AttributedString` helper text
    ///    - isOutlined: Controls the style of the pasword input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the password input, default set to *enabled*
    @available(*, deprecated, message: "Use init with an MISOTextualContent helperText. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                password: Binding<String>,
                isHiddenPassword: Binding<Bool> = .constant(true),
                placeholder: String? = nil,
                prefix: String? = nil,
                lockIcon: Bool = false,
                helperText: AttributedString,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: MISOTextInput.Status = .enabled)
    {
        self.init(key,
                  tableName: tableName,
                  bundle: bundle,
                  password: password,
                  isHiddenPassword: isHiddenPassword,
                  placeholder: placeholder,
                  prefix: prefix,
                  lockIcon: lockIcon,
                  helperText: .rich(helperText),
                  isOutlined: isOutlined,
                  constrainedMaxWidth: constrainedMaxWidth,
                  status: status)
    }

    // swiftlint:enable function_default_parameter_at_end
}
#endif
