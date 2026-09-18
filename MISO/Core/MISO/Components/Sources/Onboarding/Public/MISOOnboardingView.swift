// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOComponents
import SwiftUI

/// Full-screen onboarding scomponent.
/// Displays pages with naivgation button to introduce key features and concepts to the user.
///
/// # Code samples
///
/// ```swift
///     // Define the pages
///     private var onboardingPages: [MISOOnboardingPage] {
///         [
///             MISOOnboardingPage(
///                 image: Image(systemName: "hand.wave"),
///                 title: Text("onboarding.page1.title"),
///                 description: Text("onboarding.page1.description")),
///             MISOOnboardingPage(
///                 image: Image(systemName: "arrow.left.arrow.right"),
///                 title: Text("onboarding.page2.title"),
///                 description: Text("onboarding.page2.description")),
///             MISOOnboardingPage(
///                 image: Image(systemName: "cpu"),
///                 title: Text("onboarding.page3.title"),
///                 description: Text("onboarding.page3.description"))
///         ]
///     }
///
///     // Add to the view
///     MISOOnboardingView(pages: onboardingPages) {
///         // Action to do when the onboarding is done
///     }
/// ```
///
/// - Since: 1.1.0
public struct MISOOnboardingView: View {

    // MARK: - Properties

    /// The pages to display in the onboarding suite
    private let pages: [MISOOnboardingPage]

    /// Called when the user taps the final button on the last page.
    private let onDismissed: () -> Void

    @State private var currentPage: Int

    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.theme) private var theme

    // MARK: - Initializer

    /// Prepares the onboarding suite view.
    ///
    /// - Parameters:
    ///    - pages: The pages to display
    ///    - onDismissed: Triggered when the onboarding is done
    public init(pages: [MISOOnboardingPage],
                onDismissed: @escaping () -> Void)
    {
        currentPage = 0
        self.pages = pages
        self.onDismissed = onDismissed
    }

    // MARK: - Body

    public var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()

            VStack(spacing: 0) {
                // Carousel: all pages in a single HStack, offset-animated.
                // Both pages move in the same direction — no transition glitch.
                GeometryReader { geo in
                    HStack(spacing: 0) {
                        ForEach(pages.indices, id: \.self) { index in
                            pageView(pages[index])
                                .frame(width: geo.size.width)
                        }
                    }
                    .offset(x: -CGFloat(currentPage) * geo.size.width)
                    .animation(.easeInOut(duration: 0.3), value: currentPage)
                }

                navigationBar
                    .padding(.horizontal, theme.spaces.fixedMedium)
                    .padding(.bottom, theme.spaces.fixedLarge)
            }
        }
        // Swipe on the full ZStack surface — Spacers respond too.
        .gesture(
            DragGesture(minimumDistance: 40)
                .onEnded { value in
                    if value.translation.width < -40, currentPage < pages.count - 1 {
                        navigate(forward: true)
                    } else if value.translation.width > 40, currentPage > 0 {
                        navigate(forward: false)
                    }
                })
    }

    // MARK: - Page content

    @ViewBuilder
    private func pageView(_ page: MISOOnboardingPage) -> some View {
        VStack(spacing: theme.spaces.fixedLarge) {
            Spacer()

            page.image
                .font(.system(size: 80, weight: .thin))
                .foregroundStyle(contentColor)
                .accessibilityHidden(true)

            VStack(spacing: theme.spaces.fixedMedium) {
                page.title
                    .headingLarge(theme)
                    .foregroundStyle(contentColor)
                    .multilineTextAlignment(.center)

                page.description
                    .bodyDefaultLarge(theme)
                    .foregroundStyle(contentColor.opacity(0.8))
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal, theme.spaces.fixedLarge)

            Spacer()
            Spacer()
        }
    }

    // MARK: - Navigation bar

    @ViewBuilder
    private var navigationBar: some View {
        HStack {
            // Back button — pages 2 and 3.
            // .strong + monochrome → near-black background, visible on red or near-black.
            if currentPage > 0 {
                MISOButton(
                    "miso.components.onboarding.back",
                    bundle: Bundle.MISOComponentsMISO,
                    // swiftlint:disable:next accessibility_label_for_image
                    image: MISOImage(asset: Image(systemName: "chevron.left")),
                    appearance: .brand)
                {
                    navigate(forward: false)
                }
                .environment(\.misoUseMonochrome, true)
            }

            Spacer()

            if currentPage < pages.count - 1 {
                MISOButton(
                    "miso.components.onboarding.next",
                    bundle: Bundle.MISOComponentsMISO,
                    // swiftlint:disable:next accessibility_label_for_image
                    image: MISOImage(asset: Image(systemName: "chevron.right")),
                    appearance: .brand)
                {
                    navigate(forward: true)
                }
            } else {
                MISOButton(
                    "miso.components.onboarding.done",
                    bundle: Bundle.MISOComponentsMISO,
                    appearance: .strong)
                {
                    onDismissed()
                }
                .environment(\.misoUseMonochrome, true)
            }
        }
    }

    // MARK: - Helpers

    private func navigate(forward: Bool) {
        withAnimation(.easeInOut(duration: 0.3)) {
            currentPage += forward ? 1 : -1
        }
    }

    private var backgroundColor: Color {
        theme.colors.actionEnabled.color(for: colorScheme)
    }

    // swiftlint:disable force_unwrapping
    private var contentColor: Color {
        if colorScheme == .dark {
            Color(hexadecimalCode: theme.colors.alwaysBlack)!
        } else { // .light
            Color(hexadecimalCode: theme.colors.alwaysWhite)!
        }
    }
    // swiftlint:enable force_unwrapping
}
