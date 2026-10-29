// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

#if !os(watchOS) && !os(tvOS)
import MISOTokensSemantic
import SwiftUI

struct HelperErrorTextContainer: View {

    // MARK: - Properties

    let helperText: MISOTextualContent?
    let status: MISOTextInput.Status

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        if !text.isEmpty {
            textView()
                .labelDefaultMedium(theme)
                .foregroundColor(color)
                .multilineTextAlignment(.leading)
                .padding(.top, theme.textInput.spacePaddingBlockTopHelperText)
                .padding(.horizontal, theme.textInput.spacePaddingInlineDefault)
        }
    }

    // MARK: - Helper

    private var color: MultipleColorSemanticToken {
        switch status {
        case .enabled:
            theme.colors.contentMuted
        case .error, .richError, .textualError:
            theme.colors.contentStatusNegative
        case .loading: // Should not appear
            theme.colors.contentMuted
        case .readOnly:
            theme.colors.contentMuted
        case .disabled:
            theme.colors.actionDisabled
        }
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
