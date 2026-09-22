// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
@testable import MISOModulesAppServices
import Testing

struct BundleInfoTests {

    // MARK: - appDisplayName

    @Test
    func `appDisplayName returns fallback when key is missing`() {
        #expect(BuildInfo.appDisplayName(from: [:]) == "-")
    }

    @Test
    func `appDisplayName returns fallback when info dictionary is nil`() {
        #expect(BuildInfo.appDisplayName(from: nil) == "-")
    }

    @Test
    func `appDisplayName returns value from info dictionary`() {
        #expect(BuildInfo.appDisplayName(from: ["CFBundleDisplayName": "MISO Demo"]) == "MISO Demo")
    }

    // MARK: - appVersion

    @Test
    func `appVersion returns fallback when key is missing`() {
        #expect(BuildInfo.appVersion(from: [:]) == "—")
    }

    @Test
    func `appVersion returns fallback when info dictionary is nil`() {
        #expect(BuildInfo.appVersion(from: nil) == "—")
    }

    @Test
    func `appVersion returns value from info dictionary`() {
        #expect(BuildInfo.appVersion(from: ["CFBundleShortVersionString": "1.2.3"]) == "1.2.3")
    }

    // MARK: - buildNumber

    @Test
    func `buildNumber returns fallback when key is missing`() {
        #expect(BuildInfo.buildNumber(from: [:]) == "—")
    }

    @Test
    func `buildNumber returns fallback when info dictionary is nil`() {
        #expect(BuildInfo.buildNumber(from: nil) == "—")
    }

    @Test
    func `buildNumber returns value from info dictionary`() {
        #expect(BuildInfo.buildNumber(from: ["CFBundleVersion": "42"]) == "42")
    }

    // MARK: - releaseTag

    @Test
    func `releaseTag returns nil when key is missing`() {
        #expect(BuildInfo.releaseTag(from: [:]) == nil)
    }

    @Test
    func `releaseTag returns nil when info dictionary is nil`() {
        #expect(BuildInfo.releaseTag(from: nil) == nil)
    }

    @Test
    func `releaseTag returns nil when value is empty`() {
        #expect(BuildInfo.releaseTag(from: ["MISO_ForApp_ReleaseTag": ""]) == nil)
    }

    @Test
    func `releaseTag returns value from info dictionary`() {
        #expect(BuildInfo.releaseTag(from: ["MISO_ForApp_ReleaseTag": "1.2.3"]) == "1.2.3")
    }

    // MARK: - buildType

    @Test
    func `buildType returns fallback debug when key is missing`() {
        #expect(BuildInfo.buildType(from: [:]) == "debug")
    }

    @Test
    func `buildType returns fallback debug when info dictionary is nil`() {
        #expect(BuildInfo.buildType(from: nil) == "debug")
    }

    @Test
    func `buildType returns beta value from info dictionary`() {
        #expect(BuildInfo.buildType(from: ["MISO_ForApp_BuildType": "beta (TestFlight)"]) == "beta (TestFlight)")
    }

    @Test
    func `buildType returns stable value from info dictionary`() {
        #expect(BuildInfo.buildType(from: ["MISO_ForApp_BuildType": "stable (AppStore)"]) == "stable (AppStore)")
    }

    // MARK: - buildTypeInfo

    @Test
    func `buildTypeInfo returns wrench symbol for beta build type`() {
        let info = BuildInfo.buildTypeInfo(for: "beta (TestFlight)")
        #expect(info.symbol == "wrench.adjustable.fill")
        #expect(!info.label.isEmpty)
        #expect(!info.detail.isEmpty)
    }

    @Test
    func `buildTypeInfo returns checkmark symbol for stable build type`() {
        let info = BuildInfo.buildTypeInfo(for: "stable (AppStore)")
        #expect(info.symbol == "checkmark.seal.fill")
        #expect(!info.label.isEmpty)
        #expect(!info.detail.isEmpty)
    }

    @Test
    func `buildTypeInfo returns hammer symbol for debug build type`() {
        let info = BuildInfo.buildTypeInfo(for: "debug")
        #expect(info.symbol == "hammer.fill")
        #expect(!info.label.isEmpty)
        #expect(!info.detail.isEmpty)
    }

    @Test
    func `buildTypeInfo returns hammer symbol for unknown build type`() {
        let info = BuildInfo.buildTypeInfo(for: "unknown")
        #expect(info.symbol == "hammer.fill")
    }
}
