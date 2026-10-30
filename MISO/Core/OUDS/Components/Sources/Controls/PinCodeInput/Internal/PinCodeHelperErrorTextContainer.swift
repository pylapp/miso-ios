// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

#if !os(watchOS) && !os(tvOS)
import MISOThemesContract
import MISOTokensSemantic
import SwiftUI

struct PinCodeHelperErrorTextContainer: View {

    let helperText: MISOTextualContent?
    let status: MISOPinCodeInput.Status

    @Environment(\.theme) private var theme

    var body: some View {
        if !text.isEmpty {
            textView()
                .labelDefaultMedium(theme)
                .foregroundColor(color)
                .multilineTextAlignment(.leading)
                .padding(.top, theme.textInput.spacePaddingBlockTopHelperText)
        }
    }

    private var color: MultipleColorSemanticToken {
        status.errorMessage != nil ? theme.colors.contentStatusNegative : theme.colors.contentMuted
    }

    // In error status, the error message replaces the helper text
    private var content: MISOTextualContent? {
        status.errorMessage ?? helperText
    }

    private var text: String {
        content?.rawValue ?? ""
    }

    private func textView() -> Text {
        if let content {
            textView(for: content)
        } else {
            Text("") // Will never happen
        }
    }
}
#endif
