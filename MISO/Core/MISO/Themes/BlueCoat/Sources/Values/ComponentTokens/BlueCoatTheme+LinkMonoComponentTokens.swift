// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import Foundation
import MISOTokensComponent
import MISOTokensSemantic

// swiftlint:disable line_length

extension BlueCoatThemeLinkComponentTokensProvider: LinkMonoComponentTokens {
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryOpacityBlackMedium, dark: colors.repositoryOpacityWhiteMedium) (= light: "#05052E47" / dark: "#EFF5FF70")
    @objc open var monoColorContentDisabled: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryOpacityBlackMedium, dark: colors.repositoryOpacityWhiteMedium) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryNeutralEmphasizedBlack, dark: colors.repositoryNeutralMutedWhite) (= light: "#08090DFF" / dark: "#FFFFFFFF")
    @objc open var monoColorContentEnabled: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryNeutralEmphasizedBlack, dark: colors.repositoryNeutralMutedWhite) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryNeutralEmphasizedBlack, dark: colors.repositoryNeutralMutedWhite) (= light: "#08090DFF" / dark: "#FFFFFFFF")
    @objc open var monoColorContentFocus: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryNeutralEmphasizedBlack, dark: colors.repositoryNeutralMutedWhite) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryNeutralEmphasizedBlack, dark: colors.repositoryNeutralMutedWhite) (= light: "#08090DFF" / dark: "#FFFFFFFF")
    @objc open var monoColorContentHover: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryNeutralEmphasizedBlack, dark: colors.repositoryNeutralMutedWhite) }
    /// Has for value token MultipleColorSemanticToken(light: colors.repositoryOpacityBlackHigh, dark: colors.repositoryOpacityWhiteHigher) (= light: "#05052E85" / dark: "#EFF5FFCC")
    @objc open var monoColorContentPressed: MultipleColorSemanticToken { MultipleColorSemanticToken(light: colors.repositoryOpacityBlackHigh, dark: colors.repositoryOpacityWhiteHigher) }
}

// swiftlint:enable line_length
