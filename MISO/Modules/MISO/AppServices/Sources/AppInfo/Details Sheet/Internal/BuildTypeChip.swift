// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOComponents
import MISOTokensSemantic
import SwiftUI

/// Custom chip-shaped button showing the current distribution channel and build category.
///
/// Visually structured as a pill with:
/// - a leading SF Symbol icon (hammer, wrench, or checkmark seal),
/// - a bold label (e.g. "Xcode", "TestFlight", "App Store"),
/// - a secondary detail line below (e.g. "(debug)", "(beta)", "(stable)").
///
/// Uses ``MISOInteractionButton`` + ``MISOChipInteractionState`` for the interaction
/// state machine (enabled / hover / pressed / disabled), and mirrors the colour
/// palette of ``MISOTag`` in its *neutral emphasized* appearance:
/// - enabled/hover/pressed background → `theme.colors.surfaceInverseHigh`
/// - enabled foreground              → `theme.colors.contentInverse`
/// - hover foreground                → `theme.colors.actionHover`
/// - pressed foreground              → `theme.colors.actionPressed`
/// - disabled background             → `theme.colors.actionDisabled`
/// - disabled foreground             → `theme.colors.contentOnActionDisabled`
///
/// Tapping increments `tapCount`; reaching 8 triggers the confetti Easter egg.
struct BuildTypeChip: View {

    // MARK: - Configuration

    static let TAP_COUNT_TO_TRIGGER_EASTER_EGG: Int = 8

    // MARK: - Properties

    /// SF Symbol name, bold label, and parenthesised detail for the current build type.
    let buildTypeInfo: (symbol: String, label: String, detail: String)

    /// Set to `true` when 8 taps are reached, triggering the confetti overlay.
    @Binding var showConfetti: Bool

    /// Running count of consecutive taps; resets to 0 after the Easter egg fires.
    @State private var tapCount: Int = 0

    // MARK: - Body

    var body: some View {
        MISOInteractionButton(action: handleTap) { buttonState in
            BuildTypeChipBody(
                buildTypeInfo: buildTypeInfo,
                interactionState: MISOChipInteractionState(with: buttonState))
                .accessibilityHidden(true)
        }
        .accessibilityLabel(
            Text("\(buildTypeInfo.label) \(buildTypeInfo.detail)"))
        .accessibilityHint(Text(String(localized: "miso.module.appservices.settings.about.buildtype.a11y.hint",
                                       bundle: Bundle.MISOModulesAppServices)))
        .accessibilityAddTraits(.isButton)
    }

    // MARK: - Private

    private func handleTap() {
        tapCount += 1
        if tapCount >= Self.TAP_COUNT_TO_TRIGGER_EASTER_EGG {
            tapCount = 0
            showConfetti = true
        }
    }
}

// MARK: - Build type chip body

/// Visual pill for ``BuildTypeChip``.
///
/// Extracted to its own `View` so that `MISOChipInteractionState` can be
/// consumed directly and the MISO `View.foregroundStyle(_:MultipleColorSemanticToken)`
/// / `View.background(_:MultipleColorSemanticToken)` overloads applied cleanly.
private struct BuildTypeChipBody: View {

    let buildTypeInfo: (symbol: String, label: String, detail: String)
    let interactionState: MISOChipInteractionState

    @Environment(\.theme) private var theme

    var body: some View {
        HStack(alignment: .center, spacing: theme.spaces.columnGapMedium) {
            // swiftlint:disable:next accessibility_label_for_image
            Image(systemName: buildTypeInfo.symbol)
                .resizable()
                .scaledToFit()
                .frame(width: theme.chip.sizeIcon, height: theme.chip.sizeIcon)

            VStack(alignment: .center, spacing: 0) {
                Text(buildTypeInfo.label)
                    .labelStrongMedium(theme)
                Text(buildTypeInfo.detail)
                    .labelDefaultMedium(theme)
            }
        }
        .padding(.vertical, theme.chip.spacePaddingBlock)
        .padding(.horizontal, theme.chip.spacePaddingInlineIconNone)
        .frame(minWidth: theme.chip.sizeMinWidth, minHeight: theme.chip.sizeMinHeight)
        .foregroundStyle(foregroundToken)
        .background(backgroundToken)
        .clipShape(Capsule())
    }

    // MARK: - Token helpers — Tag neutral emphasized palette

    private var foregroundToken: MultipleColorSemanticToken {
        switch interactionState {
        case .enabled:
            theme.colors.contentInverse
        case .hover:
            theme.colors.actionHover
        case .pressed:
            theme.colors.actionPressed
        case .disabled:
            theme.colors.contentOnActionDisabled
        }
    }

    private var backgroundToken: MultipleColorSemanticToken {
        switch interactionState {
        case .enabled, .hover, .pressed:
            theme.colors.surfaceInverseHigh
        case .disabled:
            theme.colors.actionDisabled
        }
    }
}
