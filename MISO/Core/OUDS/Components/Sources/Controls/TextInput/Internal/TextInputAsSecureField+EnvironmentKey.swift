// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import SwiftUI

extension EnvironmentValues {

    /// A flag to know if ``MISOTextInput`` is used as a secure field by ``MISOPasswordInput``
    @Entry var textInputAsSecureField: Bool = false
}
