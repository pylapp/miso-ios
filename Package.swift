// swift-tools-version: 6.3

// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne
// SPDX-License-Identifier: MIT

import PackageDescription

/// Exposing MISO through a Swift Package is a good start.
/// Expose it through Pod or XCFramework should be investigated later.
/// Defining here hierarchy between targets will prevent us to have cyclic dependencies and help to have separated responsibilities.
let package = Package(

    // MARK: - Package setup

    name: "MISO",
    defaultLocalization: "en",
    platforms: [.iOS(.v15) /* and also iPadOS v15 */, .macOS(.v13), .visionOS(.v1), .watchOS(.v11), .tvOS(.v16)],

    // MARK: - Products

    // Products define the executables and libraries a package produces, making them visible to other packages.
    products: [

        // MARK: Umbrella products

        // Umbrella library to improve Developer eXperience and let users use MISO in only one import

        // Embeds all libraries and all themes
        .library(
            name: "MISOSwiftUI",
            targets: ["MISOSwiftUI"]),

        // MARK: Atomic products (OUDS)

        // Better user of products, choose only the one users want
        // Helps to isolate packages of MISO
        .library(
            name: "MISOThemesContract",
            targets: ["MISOThemesContract"]),
        .library(
            name: "MISOModules",
            targets: ["MISOModules"]),
        .library(
            name: "MISOComponents",
            targets: ["MISOComponents"]),
        .library(
            name: "MISOTokensComponent",
            targets: ["MISOTokensComponent"]),
        .library(
            name: "MISOTokensSemantic",
            targets: ["MISOTokensSemantic"]),
        .library(
            name: "MISOTokensRaw",
            targets: ["MISOTokensRaw"]),
        .library(
            name: "MISOFoundations",
            targets: ["MISOFoundations"]),

        // MARK: Atomic products (MISO)

        .library(
            name: "MISOModulesAppServices",
            targets: ["MISOModulesAppServices"]),
        .library(
            name: "MISOThemesMISOBlueCoat",
            targets: ["MISOThemesMISOBlueCoat"]),
        .library(
            name: "MISOThemesMISOFoxyRough",
            targets: ["MISOThemesMISOFoxyRough"]),
        .library(
            name: "MISOComponentsMISO",
            targets: ["MISOComponentsMISO"]),
        .library(
            name: "MISOFoundationsMISO",
            targets: ["MISOFoundationsMISO"]),
    ],

    // MARK: - Dependencies

    dependencies: [

        // MARK: Tooling dependencies

        // Apple Swift tool to build documentation
        .package(url: "https://github.com/swiftlang/swift-docc-plugin", exact: "1.5.0"),
        // Linter for Swift code
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", exact: "0.65.1"),
        // Formatter for Swift code
        .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.63.0"),
    ],

    // MARK: - Targets

    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    targets: [

        // MARK: Umbrella targets

        .target(
            name: "MISOSwiftUI",
            dependencies: [
                "MISOThemesContract",
                "MISOModules",
                "MISOComponents",
                "MISOTokensComponent",
                "MISOTokensSemantic",
                "MISOTokensRaw",
                "MISOFoundations",
                "MISOModulesAppServices",
                "MISOComponentsMISO",
                "MISOThemesMISOBlueCoat",
                "MISOThemesMISOFoxyRough",
                "MISOFoundationsMISO",
            ],
            path: "MISO/exported/MISO/Sources"),

        // MARK: Atomic targets (OUDS)

        .target(
            name: "MISOThemesContract",
            dependencies: ["MISOTokensRaw", "MISOTokensSemantic", "MISOTokensComponent"],
            path: "MISO/Core/OUDS/ThemesContract/Sources"),
        .testTarget(
            name: "MISOThemesContract-Tests",
            dependencies: ["MISOThemesContract", "TestsUtils"],
            path: "MISO/Core/OUDS/ThemesContract/Tests"),

        .target(
            name: "MISOModules",
            dependencies: ["MISOComponents"],
            path: "MISO/Modules/OUDS/Sources"),

        .target(
            name: "MISOComponents",
            dependencies: ["MISOTokensComponent", "MISOThemesContract"],
            path: "MISO/Core/OUDS/Components/Sources",
            resources: [.process("_/Resources/")]),
        .testTarget(
            name: "MISOComponents-Tests",
            dependencies: ["MISOComponents"],
            path: "MISO/Core/OUDS/Components/Tests"),

        .target(
            name: "MISOTokensComponent",
            dependencies: ["MISOTokensSemantic"],
            path: "MISO/Core/OUDS/Tokens/ComponentTokens/Sources"),

        .target(
            name: "MISOTokensSemantic",
            dependencies: ["MISOTokensRaw"],
            path: "MISO/Core/OUDS/Tokens/SemanticTokens/Sources"),
        .testTarget(
            name: "MISOTokensSemantic-Tests",
            dependencies: ["MISOTokensSemantic"],
            path: "MISO/Core/OUDS/Tokens/SemanticTokens/Tests"),

        .target(
            name: "MISOTokensRaw",
            dependencies: ["MISOFoundations"],
            path: "MISO/Core/OUDS/Tokens/RawTokens/Sources"),
        .testTarget(
            name: "MISOTokensRaw-Tests",
            dependencies: ["TestsUtils", "MISOTokensRaw"],
            path: "MISO/Core/OUDS/Tokens/RawTokens/Tests"),

        .target(
            name: "MISOFoundations",
            path: "MISO/Foundations/OUDS/Sources"),
        .testTarget(
            name: "MISOFoundations-Tests",
            dependencies: ["MISOFoundations"],
            path: "MISO/Foundations/OUDS/Tests"),
        .target(
            name: "TestsUtils",
            dependencies: ["MISOFoundations"],
            path: "MISO/Foundations/OUDS/TestsUtils"),

        // MARK: Atomic targets (MISO)

        .target(
            name: "MISOModulesAppServices",
            dependencies: ["MISOComponents", "MISOComponentsMISO", "MISOThemesContract", "MISOFoundationsMISO"],
            path: "MISO/Modules/MISO/AppServices/Sources",
            resources: [.process("Resources/")]),
        .testTarget(
            name: "MISOModulesAppServices-Tests",
            dependencies: ["TestsUtils", "MISOModulesAppServices"],
            path: "MISO/Modules/MISO/AppServices/Tests"),

        .target(
            name: "MISOThemesMISOBlueCoat",
            dependencies: ["MISOThemesContract"],
            path: "MISO/Core/MISO/Themes/BlueCoat/Sources",
            resources: [.process("Resources/")]),
        .testTarget(
            name: "MISOThemesMISOBlueCoat-Tests",
            dependencies: ["TestsUtils", "MISOThemesMISOBlueCoat"],
            path: "MISO/Core/MISO/Themes/BlueCoat/Tests"),

        .target(
            name: "MISOThemesMISOFoxyRough",
            dependencies: ["MISOThemesMISOBlueCoat"],
            path: "MISO/Core/MISO/Themes/FoxyRough/Sources",
            resources: [.process("Resources/")]),
        .testTarget(
            name: "MISOThemesMISOFoxyRough-Tests",
            dependencies: ["TestsUtils", "MISOThemesMISOBlueCoat", "MISOThemesMISOFoxyRough"],
            path: "MISO/Core/MISO/Themes/FoxyRough/Tests"),

        .target(
            name: "MISOComponentsMISO",
            dependencies: ["MISOComponents"],
            path: "MISO/Core/MISO/Components/Sources",
            resources: [.process("Resources/")]),
        .testTarget(
            name: "MISOComponentsMISO-Tests",
            dependencies: ["TestsUtils", "MISOComponentsMISO"],
            path: "MISO/Core/MISO/Components/Tests"),

        .target(
            name: "MISOFoundationsMISO",
            dependencies: ["MISOFoundations"],
            path: "MISO/Foundations/MISO/Sources"),
    ],

    // MARK: - Swift language modes

    swiftLanguageModes: [.v6])
