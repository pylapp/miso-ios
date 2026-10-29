// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import SwiftUI

/// Deprecated initializers of ``MISOAlertMessage``.
///
/// The eight initializers below (label as `String` or `LocalizedStringKey` × `description` as `String` or `AttributedString`
/// × `bulletList` as `[String]` or `[AttributedString]`) are deprecated in favor of the two unified initializers
/// which accept ``MISOTextualContent`` for the `description` and the elements of the `bulletList`.
///
/// They forward to the new unified initializers so existing call sites keep working unchanged;
/// only a deprecation warning is emitted.
///
/// See `MIGRATION.md` section `v3.0.0 → v3.2.0` for the full migration guide.
@available(iOS 15, macOS 13, visionOS 1, tvOS 16, *)
extension MISOAlertMessage { // TODO: v4 - Remove these old inits

    // swiftlint:disable function_default_parameter_at_end

    /// Creates an alert message with a `String` label.
    ///
    /// - Parameters:
    ///   - label: Label displayed in the alert message
    ///   - status: The status of the alert message, default set to *positive*
    ///   - description: An optional supplementary text, default set to *nil*
    ///   - bulletList: An optional list of bullet points, default set to empty array
    ///   - link: An optional link to be displayed in the alert message, default set to *nil*
    ///   - onClose: An optional callback invoked when the close button is clicked, default set to *nil*
    @available(*, deprecated, message: "Use init with MISOTextualContent parameters for description and bulletList. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(label: String,
                status: MISOAlertStatus = .positive,
                description: String? = nil,
                bulletList: [String] = [],
                link: Self.Link? = nil,
                onClose: (() -> Void)? = nil)
    {
        self.init(label: label,
                  status: status,
                  description: description.map { .raw($0) },
                  bulletList: bulletList.map { .raw($0) },
                  link: link,
                  onClose: onClose)
    }

    /// Creates an alert message with a `String` label and a rich text bullet list.
    ///
    /// - Parameters:
    ///   - label: Label displayed in the alert message
    ///   - status: The status of the alert message, default set to *positive*
    ///   - description: An optional supplementary text, default set to *nil*
    ///   - bulletList: A list of bullet points in rich text
    ///   - link: An optional link to be displayed in the alert message, default set to *nil*
    ///   - onClose: An optional callback invoked when the close button is clicked, default set to *nil*
    @available(*, deprecated, message: "Use init with MISOTextualContent parameters for description and bulletList. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(label: String,
                status: MISOAlertStatus = .positive,
                description: String? = nil,
                bulletList: [AttributedString],
                link: Self.Link? = nil,
                onClose: (() -> Void)? = nil)
    {
        self.init(label: label,
                  status: status,
                  description: description.map { .raw($0) },
                  bulletList: bulletList.map { .rich($0) },
                  link: link,
                  onClose: onClose)
    }

    /// Creates an alert message with a `String` label and a rich text description.
    ///
    /// - Parameters:
    ///   - label: Label displayed in the alert message
    ///   - status: The status of the alert message, default set to *positive*
    ///   - description: A supplementary text as rich text
    ///   - bulletList: An optional list of bullet points, default set to empty array
    ///   - link: An optional link to be displayed in the alert message, default set to *nil*
    ///   - onClose: An optional callback invoked when the close button is clicked, default set to *nil*
    @available(*, deprecated, message: "Use init with MISOTextualContent parameters for description and bulletList. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(label: String,
                status: MISOAlertStatus = .positive,
                description: AttributedString,
                bulletList: [String] = [],
                link: Self.Link? = nil,
                onClose: (() -> Void)? = nil)
    {
        self.init(label: label,
                  status: status,
                  description: .rich(description),
                  bulletList: bulletList.map { .raw($0) },
                  link: link,
                  onClose: onClose)
    }

    /// Creates an alert message with a `String` label and a rich text description and a rich text bullet list.
    ///
    /// - Parameters:
    ///   - label: Label displayed in the alert message
    ///   - status: The status of the alert message, default set to *positive*
    ///   - description: A supplementary text as rich text
    ///   - bulletList: A list of bullet points in rich text
    ///   - link: An optional link to be displayed in the alert message, default set to *nil*
    ///   - onClose: An optional callback invoked when the close button is clicked, default set to *nil*
    @available(*, deprecated, message: "Use init with MISOTextualContent parameters for description and bulletList. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(label: String,
                status: MISOAlertStatus = .positive,
                description: AttributedString,
                bulletList: [AttributedString],
                link: Self.Link? = nil,
                onClose: (() -> Void)? = nil)
    {
        self.init(label: label,
                  status: status,
                  description: .rich(description),
                  bulletList: bulletList.map { .rich($0) },
                  link: link,
                  onClose: onClose)
    }

    /// Creates an alert message with a localized label.
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - status: The status of the alert message, default set to *positive*
    ///   - description: An optional supplementary text, default set to *nil*
    ///   - bulletList: An optional list of bullet points, default set to empty array
    ///   - link: An optional link to be displayed in the alert message, default set to *nil*
    ///   - onClose: An optional callback invoked when the close button is clicked, default set to *nil*
    @available(*, deprecated, message: "Use init with MISOTextualContent parameters for description and bulletList. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                status: MISOAlertStatus = .positive,
                description: String? = nil,
                bulletList: [String] = [],
                link: Self.Link? = nil,
                onClose: (() -> Void)? = nil)
    {
        self.init(key,
                  tableName: tableName,
                  bundle: bundle,
                  status: status,
                  description: description.map { .raw($0) },
                  bulletList: bulletList.map { .raw($0) },
                  link: link,
                  onClose: onClose)
    }

    /// Creates an alert message with a localized label and a rich text bullet list.
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - status: The status of the alert message, default set to *positive*
    ///   - description: An optional supplementary text, default set to *nil*
    ///   - bulletList: A list of bullet points in rich text
    ///   - link: An optional link to be displayed in the alert message, default set to *nil*
    ///   - onClose: An optional callback invoked when the close button is clicked, default set to *nil*
    @available(*, deprecated, message: "Use init with MISOTextualContent parameters for description and bulletList. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                status: MISOAlertStatus = .positive,
                description: String? = nil,
                bulletList: [AttributedString],
                link: Self.Link? = nil,
                onClose: (() -> Void)? = nil)
    {
        self.init(key,
                  tableName: tableName,
                  bundle: bundle,
                  status: status,
                  description: description.map { .raw($0) },
                  bulletList: bulletList.map { .rich($0) },
                  link: link,
                  onClose: onClose)
    }

    /// Creates an alert message with a localized label and a rich text description.
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - status: The status of the alert message, default set to *positive*
    ///   - description: A supplementary text as rich text
    ///   - bulletList: An optional list of bullet points, default set to empty array
    ///   - link: An optional link to be displayed in the alert message, default set to *nil*
    ///   - onClose: An optional callback invoked when the close button is clicked, default set to *nil*
    @available(*, deprecated, message: "Use init with MISOTextualContent parameters for description and bulletList. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                status: MISOAlertStatus = .positive,
                description: AttributedString,
                bulletList: [String] = [],
                link: Self.Link? = nil,
                onClose: (() -> Void)? = nil)
    {
        self.init(key,
                  tableName: tableName,
                  bundle: bundle,
                  status: status,
                  description: .rich(description),
                  bulletList: bulletList.map { .raw($0) },
                  link: link,
                  onClose: onClose)
    }

    /// Creates an alert message with a localized label and a rich text description and a rich text bullet list.
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - status: The status of the alert message, default set to *positive*
    ///   - description: A supplementary text as rich text
    ///   - bulletList: A list of bullet points in rich text
    ///   - link: An optional link to be displayed in the alert message, default set to *nil*
    ///   - onClose: An optional callback invoked when the close button is clicked, default set to *nil*
    @available(*, deprecated, message: "Use init with MISOTextualContent parameters for description and bulletList. See MIGRATION.md v1.2.0.")
    @_disfavoredOverload
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                status: MISOAlertStatus = .positive,
                description: AttributedString,
                bulletList: [AttributedString],
                link: Self.Link? = nil,
                onClose: (() -> Void)? = nil)
    {
        self.init(key,
                  tableName: tableName,
                  bundle: bundle,
                  status: status,
                  description: .rich(description),
                  bulletList: bulletList.map { .rich($0) },
                  link: link,
                  onClose: onClose)
    }

    // swiftlint:enable function_default_parameter_at_end
}
