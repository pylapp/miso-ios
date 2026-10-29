// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOTokensSemantic
import SwiftUI

/// A `MISOCategoricalTag` is a non-interactive label used to visually distinguish non-functional categories using categorical colours.
/// It can represent information such as promotions, events, benefits or other locally defined categories.
/// It does not communicate functional status or system feedback.
/// Use the `MISOTag` for success, warning, error, availability or other functional states.
/// Use `MISOCategoricalTag` tag only when its colour categories are defined by the product or local market guidelines.
///
/// Colors to use for categories are defined in `categorical tag` component tokens.
///
/// ## Category
///
/// Categorical tags have five categories, each with its own background color.
///
/// ## Shape
///
/// Tags can have two shapes:
///
/// - **Rounded**: A tag with fully rounded corners, creating a pill-shaped appearance.
///
/// - **Square**: A tag with sharp, square corners.
///
/// ## Size
///
/// Tags can have two sizes:
///
/// - **Default**: The standard tag size, suitable for most use cases.
///
/// - **Small**: A compact tag with reduced height and font size.
///
/// ## Layout
///
/// There are three available layouts:
///
/// - **Text only**: A tag that displays only text.
///
/// - **Text + Bullet**: A tag with a small indicator (dot) alongside the text.
///
/// - **Text + Icon**: A tag that includes an icon before the text.
///
/// ## Code samples
///
/// ```swift
///     // Text only with category 1, rounded shape, default size
///     MISOCategoricalTag(label: "Label", category: .category1)
///
///     // Text with category 2 and bullet
///     MISOCategoricalTag(label: "Label", category: .category2, leading: .bullet)
///
///     // Text with category 3 and custom icon
///     MISOCategoricalTag(label: "Label", category: .category3, leading: .icon(MISOImage(asset: Image(decorative: "ic_heart"))))
///
///     // Small size, square shape
///     MISOCategoricalTag(label: "Label", category: .category4, shape: .square, size: .small)
/// ```
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: OUDS 3.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct MISOCategoricalTag: View {

    // MARK: - Properties

    private let category: Category
    private let shape: MISOTag.Shape
    private let size: MISOTag.Size
    private let leading: Leading
    private let loadingType: LoadingType
    private let label: String

    @Environment(\.dynamicTypeSize) private var dynamicTypeSize: DynamicTypeSize

    // MARK: - Internal types

    enum LoadingType { // TODO: v4 - Mutualize with MISOTag
        case none
        case loading(label: String, progress: Double?)
    }

    // MARK: - Configuration enums

    /// The category of a `MISOCategoricalTag` determines the background color of the tag.
    ///
    /// - Since: 3.2.0
    @frozen public enum Category: CaseIterable {

        /// Category 1
        case category1

        /// Category 2
        case category2

        /// Category 3
        case category3

        /// Category 4
        case category4

        /// Category 5
        case category5
    }

    /// The leading element of a `MISOCategoricalTag`.
    ///
    /// - Since: 3.2.0
    @frozen public enum Leading { // TODO: v4 - Mutualize with MISOTag

        /// No leading element
        case none

        /// A bullet (dot) as leading element
        case bullet

        /// A custom icon as leading element
        case icon(MISOImage)
    }

    // MARK: - Initializers

    /// Creates a categorical tag with a label and category.
    ///
    /// ```swift
    ///     MISOCategoricalTag(label: "Label", category: .category1)
    /// ```
    ///
    /// - Parameters:
    ///    - label: The label displayed in the tag
    ///    - category: The category determining the background color. Default set to *category1*.
    ///    - leading: The leading element (bullet or icon). Default set to *none*.
    ///    - shape: The shape of the tag. Default set to *rounded*.
    ///    - size: The size of the tag. Default set to *default*.
    public init(label: String,
                category: Category = .category1,
                leading: Leading = .none,
                shape: MISOTag.Shape = .rounded,
                size: MISOTag.Size = .default)
    {
        self.label = label
        self.category = category
        self.leading = leading
        self.shape = shape
        self.size = size
        loadingType = .none
    }

    /// Creates a categorical tag in the loading state indicates that the system is processing or retrieving data.
    /// A circular progress indicator appears to inform the user that an action is in progress.
    ///
    /// Use the `View/disabled(_:)` method has no effect on this state.
    ///
    /// ```swift
    ///     MISOCategoricalTag(loadingLabel: "Processing...", progress: 0.75)
    /// ```
    ///
    /// - Parameters:
    ///    - loadingLabel: The label displayed in the tag
    ///    - progress: The loading progress, where 0.0 represents no progress and 1.0 represents full progress. Set this
    ///  value to `nil` to display a circular indeterminate progress indicator.
    ///    - category: The category determining the background color. Default set to *category1*.
    ///    - shape: The shape of the tag, i.e. the corners style. Default set to *rounded*.
    ///    - size: The size of the tag. Default set to *default*.
    public init(loadingLabel: String,
                progress: Double? = nil,
                category: Category = .category1,
                shape: MISOTag.Shape = .rounded,
                size: MISOTag.Size = .default)
    {
        label = loadingLabel
        self.category = category
        leading = .none
        self.shape = shape
        self.size = size
        loadingType = .loading(label: loadingLabel, progress: progress)
    }

    /// Creates a categorical tag in the loading state with a localized label, looking up the key in the given bundle.
    ///
    /// ```swift
    ///     MISOCategoricalTag(loadingKey: LocalizedStringKey("loading_tag"), bundle: Bundle.module)
    /// ```
    ///
    /// - Parameters:
    ///    - loadingKey: A `LocalizedStringKey` used to look up the label in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - progress: The loading progress, where 0.0 represents no progress and 1.0 represents full progress. Set this
    ///  value to `nil` to display a circular indeterminate progress indicator.
    ///    - category: The category determining the background color. Default set to *category1*.
    ///    - shape: The shape of the tag, i.e. the corners style. Default set to *rounded*.
    ///    - size: The size of the tag. Default set to *default*.
    public init(loadingKey: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                progress: Double? = nil,
                category: Category = .category1,
                shape: MISOTag.Shape = .rounded,
                size: MISOTag.Size = .default)
    {
        let resolvedLabel = loadingKey.resolved(tableName: tableName, bundle: bundle)
        self.init(loadingLabel: resolvedLabel, progress: progress, category: category, shape: shape, size: size)
    }

    /// Creates a categorical tag with a localized label, looking up the key in the given bundle.
    ///
    /// ```swift
    ///     MISOCategoricalTag(LocalizedStringKey("category_tag"), bundle: Bundle.module, category: .category2)
    /// ```
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - category: The category determining the background color. Default set to *category1*.
    ///    - leading: The leading element (bullet or icon). Default set to *none*.
    ///    - shape: The shape of the tag. Default set to *rounded*.
    ///    - size: The size of the tag. Default set to *default*.
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                category: Category = .category1,
                leading: Leading = .none,
                shape: MISOTag.Shape = .rounded,
                size: MISOTag.Size = .default)
    {
        let resolvedLabel = key.resolved(tableName: tableName, bundle: bundle)
        self.init(label: resolvedLabel, category: category, leading: leading, shape: shape, size: size)
    }

    // MARK: - Body

    @Environment(\.theme) private var theme

    public var body: some View {
        HStack(alignment: .center, spacing: spacing) {
            iconView
                .frame(width: assetSize, height: assetSize, alignment: .center)

            CategoricalTagLabel(size: size, label: label, isLoading: isLoading)
        }
        .modifier(TagPaddingsAndSizeModifier(size: size, hasIcon: hasIcon))
        .modifier(CategoricalTagBackgroundModifier(category: category, isLoading: isLoading))
        .modifier(CategoricalTagShapeModifier(shape: shape))
        .accessibilityLabel(accessibilityLabel)
    }

    // MARK: - Helpers

    @ViewBuilder
    private var iconView: some View {
        switch loadingType {
        case .none:
            CategoricalTagIcon(size: size, leading: leading)
        case let .loading(_, progress):
            if let progress {
                MISOCircularProgressIndicator(progress: progress, status: .neutral, track: false, animated: true, size: progressIndicatorSize)
            } else {
                MISOCircularProgressIndicator(status: .neutral, track: false, size: progressIndicatorSize)
            }
        }
    }

    private var spacing: CGFloat {
        switch size {
        case .default:
            theme.tag.spaceColumnGapDefault
        case .small:
            theme.tag.spaceColumnGapSmall
        }
    }

    private var assetSize: CGFloat {
        let rawSize = switch size {
        case .default:
            theme.tag.sizeAssetDefault
        case .small:
            theme.tag.sizeAssetSmall
        }
        return rawSize * (dynamicTypeSize.isLargeTextUsed ? dynamicTypeSize.percentageRate / 100 : 1)
    }

    private var progressIndicatorSize: CGFloat {
        switch size {
        case .default:
            16
        case .small:
            12
        }
    }

    private var isLoading: Bool {
        if case .loading = loadingType {
            return true
        }
        return false
    }

    private var hasIcon: Bool {
        switch loadingType {
        case .none:
            switch leading {
            case .icon, .bullet:
                true
            case .none:
                false
            }
        case .loading:
            true
        }
    }

    private var accessibilityLabel: String {
        if case .loading = loadingType {
            return label + ", " + "core_common_loading_a11y".localized()
        }
        return label
    }
}
