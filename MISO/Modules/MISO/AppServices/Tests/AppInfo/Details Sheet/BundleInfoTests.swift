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
        #expect(BundleInfo.appDisplayName(from: [:]) == "-")
    }

    @Test
    func `appDisplayName returns fallback when info dictionary is nil`() {
        #expect(BundleInfo.appDisplayName(from: nil) == "-")
    }

    @Test
    func `appDisplayName returns value from info dictionary`() {
        #expect(BundleInfo.appDisplayName(from: ["CFBundleDisplayName": "MISO Demo"]) == "MISO Demo")
    }

    // MARK: - appVersion

    @Test
    func `appVersion returns fallback when key is missing`() {
        #expect(BundleInfo.appVersion(from: [:]) == "—")
    }

    @Test
    func `appVersion returns fallback when info dictionary is nil`() {
        #expect(BundleInfo.appVersion(from: nil) == "—")
    }

    @Test
    func `appVersion returns value from info dictionary`() {
        #expect(BundleInfo.appVersion(from: ["CFBundleShortVersionString": "1.2.3"]) == "1.2.3")
    }

    // MARK: - buildNumber

    @Test
    func `buildNumber returns fallback when key is missing`() {
        #expect(BundleInfo.buildNumber(from: [:]) == "—")
    }

    @Test
    func `buildNumber returns fallback when info dictionary is nil`() {
        #expect(BundleInfo.buildNumber(from: nil) == "—")
    }

    @Test
    func `buildNumber returns value from info dictionary`() {
        #expect(BundleInfo.buildNumber(from: ["CFBundleVersion": "42"]) == "42")
    }

    // MARK: - releaseTag

    @Test
    func `releaseTag returns nil when key is missing`() {
        #expect(BundleInfo.releaseTag(from: [:]) == nil)
    }

    @Test
    func `releaseTag returns nil when info dictionary is nil`() {
        #expect(BundleInfo.releaseTag(from: nil) == nil)
    }

    @Test
    func `releaseTag returns nil when value is empty`() {
        #expect(BundleInfo.releaseTag(from: ["MISO_ForApp_ReleaseTag": ""]) == nil)
    }

    @Test
    func `releaseTag returns value from info dictionary`() {
        #expect(BundleInfo.releaseTag(from: ["MISO_ForApp_ReleaseTag": "1.2.3"]) == "1.2.3")
    }

    // MARK: - buildType

    @Test
    func `buildType returns fallback debug when key is missing`() {
        #expect(BundleInfo.buildType(from: [:]) == "debug")
    }

    @Test
    func `buildType returns fallback debug when info dictionary is nil`() {
        #expect(BundleInfo.buildType(from: nil) == "debug")
    }

    @Test
    func `buildType returns beta value from info dictionary`() {
        #expect(BundleInfo.buildType(from: ["MISO_ForApp_BuildType": "beta (TestFlight)"]) == "beta (TestFlight)")
    }

    @Test
    func `buildType returns stable value from info dictionary`() {
        #expect(BundleInfo.buildType(from: ["MISO_ForApp_BuildType": "stable (AppStore)"]) == "stable (AppStore)")
    }

    // MARK: - buildTypeInfo

    @Test
    func `buildTypeInfo returns wrench symbol for beta build type`() {
        let info = BundleInfo.buildTypeInfo(for: "beta (TestFlight)")
        #expect(info.symbol == "wrench.adjustable.fill")
        #expect(!info.label.isEmpty)
        #expect(!info.detail.isEmpty)
    }

    @Test
    func `buildTypeInfo returns checkmark symbol for stable build type`() {
        let info = BundleInfo.buildTypeInfo(for: "stable (AppStore)")
        #expect(info.symbol == "checkmark.seal.fill")
        #expect(!info.label.isEmpty)
        #expect(!info.detail.isEmpty)
    }

    @Test
    func `buildTypeInfo returns hammer symbol for debug build type`() {
        let info = BundleInfo.buildTypeInfo(for: "debug")
        #expect(info.symbol == "hammer.fill")
        #expect(!info.label.isEmpty)
        #expect(!info.detail.isEmpty)
    }

    @Test
    func `buildTypeInfo returns hammer symbol for unknown build type`() {
        let info = BundleInfo.buildTypeInfo(for: "unknown")
        #expect(info.symbol == "hammer.fill")
    }
}
