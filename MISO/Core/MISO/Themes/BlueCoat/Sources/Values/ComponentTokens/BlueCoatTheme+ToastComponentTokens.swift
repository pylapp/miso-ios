// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import Foundation
import MISOTokensComponent
import MISOTokensSemantic

extension BlueCoatThemeToastComponentTokensProvider: ToastComponentTokens {
    /// Has for value token borders.radiusNone (= 0)
    @objc open var borderRadiusMedia: BorderRadiusSemanticToken { borders.radiusNone }
    /// Has for value token borders.radiusSmall (= 3)
    @objc open var borderRadiusMediaRounded: BorderRadiusSemanticToken { borders.radiusSmall }
    /// Has for value token dimensions._3xlarge (= 56)
    @objc open var sizeAssetLarge: SizeSemanticToken { dimensions._3xlarge }
    /// Has for value token dimensions._medium (= 40)
    @objc open var sizeAssetMedium: SizeSemanticToken { dimensions._medium }
    /// Has for value token sizes.iconWithLabelLargeSizeMedium (= 28)
    @objc open var sizeAssetSmall: SizeSemanticToken { sizes.iconWithLabelLargeSizeMedium }
}
