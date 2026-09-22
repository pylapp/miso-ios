// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import MISOComponents
import MISOThemesContract
import MISOTokensRaw
import SwiftUI

/// Full-screen splash view displayed for 1 second at app launch, with some debug information.
///
/// # Code sample
///
/// ```swift
///     MISOSplashScreenView(appLogo: Image(decorative: "Logo")) {
///         // Action to done with splash screen is done
///     }
/// ```
///
/// - Since: 1.1.0
public struct MISOSplashScreenView: View {

    // MARK: - Properties

    /// Called once the fade-out animation has completed.
    ///
    /// The parent uses this to remove the splash from the `ZStack` and free memory.
    let onDismissed: () -> Void

    /// The logo to display centered in the splash screen
    private let appLogo: Image

    /// The width to apply to the logo
    private let logoWidth: CGFloat

    /// The height to apply to the logo
    private let logoHeight: CGFloat

    @State private var opacity: Double

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Initializer

    /// Prepares the splash screen view
    ///
    /// - Parameters:
    ///    - appLogo: The image, logo, icon of the app to display
    ///    - logoWidth: The width of the `appLogo`, default set to 120
    ///    - logoHeight: The height of the `appLogo`, default set to 120
    ///    - onDismissed: Callback to trigger when splashscreen is dismissed
    public init(appLogo: Image,
                logoWidth: CGFloat = 120,
                logoHeight: CGFloat = 120,
                onDismissed: @escaping () -> Void)
    {
        opacity = 1
        self.appLogo = appLogo
        self.logoWidth = logoWidth
        self.logoHeight = logoHeight
        self.onDismissed = onDismissed
    }

    // MARK: - Body

    public var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()

            appLogo
                .resizable()
                .scaledToFit()
                .frame(width: logoWidth, height: logoHeight)
                .clipShape(RoundedRectangle(cornerRadius: BorderRawTokens.radius600, style: .continuous))
                .shadow(radius: 8, y: 4)
                .accessibilityHidden(true)

            VStack {
                Spacer()
                buildBanner
                    .fixedSize(horizontal: true, vertical: false)
                    .padding(.bottom, theme.spaces.fixedMedium)
            }
        }
        .opacity(opacity)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + SplashScreenConfiguration.WAIT_INTERVAL_IN_SECOND) {
                withAnimation(.easeOut(duration: SplashScreenConfiguration.ANIM_DURATION)) {
                    opacity = 0
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + SplashScreenConfiguration.ANIM_DURATION) {
                    onDismissed()
                }
            }
        }
    }

    // MARK: - Build banner

    /// Alert message shown at the bottom of the screen indicating the current build type
    /// if debug of beta.
    @ViewBuilder private var buildBanner: some View {
        #if DEBUG
        MISOAlertMessage("miso.components.splashscreen.buildtype.debug",
                         bundle: Bundle.MISOComponentsMISO,
                         status: .warning)
        #else
        let buildType = Bundle.main.infoDictionary?["MISO_ForApp_BuildType"] as? String ?? ""
        if buildType.localizedCaseInsensitiveContains("testflight") {
            MISOAlertMessage("miso.components.splashscreen.buildtype.beta",
                             bundle: Bundle.MISOComponentsMISO,
                             status: .info)
        }
        #endif
    }

    // MARK: - Helpers

    /// Background colour adapts to the current colour scheme.
    private var backgroundColor: Color {
        theme.colors.actionEnabled.color(for: colorScheme)
    }
}
