// Software: MISO iOS (fork of OUDS iOS)
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Orange SA, Pierre-Yves Lapersonne

import MISOTokensSemantic
import SwiftUI

struct AlertMessageContent: View {

    // MARK: - Properties

    let text: String
    let status: MISOAlertStatus
    let description: MISOTextualContent?
    let bulletList: [MISOTextualContent]
    let link: MISOAlertMessage.Link?
    let disableVoiceOverAnnouncement: Bool
    let onClose: (() -> Void)?

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            VStack(alignment: .leading, spacing: theme.alert.spaceRowGap) {
                Text(text)
                    .labelModerateLarge(theme)
                    .foregroundColor(foregroundColor)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: maxWidthText, alignment: .leading)

                if let description, !description.isEmpty {
                    textView(for: description)
                        .labelDefaultMedium(theme)
                        .foregroundColor(foregroundColor)
                        .frame(maxWidth: maxWidthText, alignment: .leading)
                        .padding(.bottom, theme.alert.spacePaddingBlockBottomContent)
                }

                if !bulletList.isEmpty {
                    VStack(alignment: .leading, spacing: theme.alertMessage.spaceRowGapBullet) {
                        ForEach(Array(bulletList.enumerated()), id: \.offset) { _, text in
                            AlertMessageBulletListItem(text: text, status: status)
                        }
                    }
                    .padding(.bottom, theme.alert.spacePaddingBlockBottomContent)
                }
            }
            .accessibilityElement(children: .combine)
            .accessibilityLabel(accessibilityLabel)
            .accessibilitySortPriority(MISOAlertMessage.textsAccessibilityPriority)
            #if canImport(UIKit)
                .modifier(AlertMessageFKACustomActionsModifier(link: link, onClose: onClose))
            #endif

            // Action
            if let link, self.link?.position == .bottom {
                MISOLink(text: link.text, size: .default, density: .compact, action: link.action)
                    .accessibilitySortPriority(MISOAlertMessage.actionLinkAccessibilityPriority)
            }
        }
        .padding(.vertical, theme.alert.spacePaddingBlock)
        .fixedSize(horizontal: false, vertical: true)
        .onAppear {
            if !disableVoiceOverAnnouncement {
                VoiceOverUtils.announce(accessibilityLabel)
            }
        }
    }

    // MARK: - Helpers

    private var maxWidthText: CGFloat {
        theme.sizes.maxWidthBoxedText.dimension(for: horizontalSizeClass ?? .regular)
    }

    private var foregroundColor: MultipleColorSemanticToken {
        switch status {
        case .neutral:
            theme.colors.contentDefault
        case .accent:
            theme.colors.contentOnStatusAccentMuted
        case .positive:
            theme.colors.contentOnStatusPositiveMuted
        case .negative:
            theme.colors.contentOnStatusNegativeMuted
        case .warning:
            theme.colors.contentOnStatusWarningMuted
        case .info:
            theme.colors.contentOnStatusInfoMuted
        }
    }

    private var accessibilityLabel: String {
        let labelPrefix = switch status {
        case .warning:
            "core_shared_warning_a11y".localized() + ","
        case .negative:
            "core_shared_negative_a11y".localized() + ","
        case .info:
            "core_alertMessage_info_a11y".localized() + ","
        default:
            ""
        }
        return "\(labelPrefix) \(alertText)"
    }

    private var alertText: String {
        var parts: [String] = [text]
        if let description, !description.isEmpty {
            parts.append(description.rawValue)
        }
        parts += bulletList.filter { !$0.isEmpty }.map(\.rawValue)
        return parts.joined(separator: ", ")
    }
}
