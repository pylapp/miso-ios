// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

#if !os(watchOS) && !os(tvOS)
import SwiftUI

/// Deprecated initializers of ``MISOPinCodeInput``.
///
/// The three initializers below (`helperText` as `String`, `AttributedString` or `LocalizedStringKey`)
/// are deprecated in favor of the unified initializer which accepts an ``MISOTextualContent`` for the `helperText`.
///
/// They forward to the new unified initializer so existing call sites keep working unchanged;
/// only a deprecation warning is emitted.
///
/// See `MIGRATION.md` section `v3.0.0 → v3.2.0` for the full migration guide.
@available(iOS 15, visionOS 1, *)
extension MISOPinCodeInput { // TODO: v4 - Remove these old inits

    // swiftlint:disable function_default_parameter_at_end

    /// Defines a PIN code imput component with several boxes to fill the code
    ///
    /// - Parameters:
    ///   - value: A *binding* exposing the value written by the user when the last symbol has been put
    ///   - length: The number of required symbols for the input, default set to *six*
    ///   - helperText: A text to display below the PIN code input container, default set to *nil*
    ///   - isOutlined: If *true*, draw a thing stroke around the input, otherwise use a background to fill instead, default set to *false*
    ///   - status: Default set to *.enabled*, defines if there is an error context or not
    ///   - autofocus: If *true*, automatically focuses the first available field on appear, default set to *false*
    @available(*, deprecated, message: "Use init with an MISOTextualContent helperText. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(_ value: Binding<String>,
                length: MISOPinCodeInput.Length = .six,
                helperText: String? = nil,
                isOutlined: Bool = false,
                status: Self.Status = .enabled,
                autofocus: Bool = false)
    {
        self.init(value,
                  length: length,
                  hiddenCharacters: true,
                  helperText: helperText.map { .raw($0) },
                  isOutlined: isOutlined,
                  status: status,
                  autofocus: autofocus)
    }

    /// Defines a PIN code imput component with several boxes to fill the code and an helper text in rich text
    ///
    /// - Parameters:
    ///   - value: A *binding* exposing the value written by the user when the last symbol has been put
    ///   - length: The number of required symbols for the input, default set to *six*
    ///   - helperText: A text to display below the PIN code input container, in rich text
    ///   - isOutlined: If *true*, draw a thing stroke around the input, otherwise use a background to fill instead, default set to *false*
    ///   - status: Default set to *.enabled*, defines if there is an error context or not
    ///   - autofocus: If *true*, automatically focuses the first available field on appear, default set to *false*
    @available(*, deprecated, message: "Use init with an MISOTextualContent helperText. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(_ value: Binding<String>,
                length: MISOPinCodeInput.Length = .six,
                helperText: AttributedString,
                isOutlined: Bool = false,
                status: Self.Status = .enabled,
                autofocus: Bool = false)
    {
        self.init(value,
                  length: length,
                  hiddenCharacters: true,
                  helperText: .rich(helperText),
                  isOutlined: isOutlined,
                  status: status,
                  autofocus: autofocus)
    }

    /// Defines a PIN code imput component with several boxes to fill the code, and an helper text from a localized string.
    ///
    /// - Parameters:
    ///   - value: A *binding* exposing the value written by the user when the last symbol has been put
    ///   - length: The number of required symbols for the input, default set to *six*
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - isOutlined: If *true*, draw a thing stroke around the input, otherwise use a background to fill instead, default set to *false*
    ///   - status: Default set to *.enabled*, defines if there is an error context or not
    ///   - autofocus: If *true*, automatically focuses the first available field on appear, default set to *false*
    @available(*, deprecated, message: "Use init with an MISOTextualContent helperText, with .localized(_:tableName:bundle:). See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(_ value: Binding<String>,
                length: MISOPinCodeInput.Length = .six,
                helperText key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                isOutlined: Bool = false,
                status: Self.Status = .enabled,
                autofocus: Bool = false)
    {
        self.init(value,
                  length: length,
                  hiddenCharacters: true,
                  helperText: .localized(key, tableName: tableName, bundle: bundle),
                  isOutlined: isOutlined,
                  status: status,
                  autofocus: autofocus)
    }

    // swiftlint:enable function_default_parameter_at_end
}
#endif
