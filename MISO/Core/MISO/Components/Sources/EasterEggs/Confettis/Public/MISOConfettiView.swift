// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

#if !os(macOS) && !os(tvOS) && !os(visionOS) && !os(watchOS)
import SwiftUI
import UIKit

// MARK: - Confetti view

/// Full-screen confetti burst triggered by an external boolean binding.
///
/// Renders ~120 particles using `TimelineView` + `Canvas` for smooth 60 fps
/// animation without allocating SwiftUI views per particle. The effect lasts
/// 3 seconds then automatically resets `isActive` to `false`.
///
/// Place this view as an `.overlay` with `.ignoresSafeArea()` to cover the
/// full screen. It ignores all hit-testing so underlying controls stay interactive.
///
/// # Code sample
///
/// ```swift
/// someView
///     .overlay {
///         if showConfetti {
///             MISOConfettiView(isActive: $showConfetti)
///                 .ignoresSafeArea()
///                 .allowsHitTesting(false)
///         }
///     }
/// ```
///
/// - Since: 1.1.0
@available(iOS 15, *)
@available(macOS, unavailable) // Need to find something else than Safari View stuff
@available(tvOS, unavailable)
@available(visionOS, unavailable)
@available(watchOS, unavailable)
public struct MISOConfettiView: View {

    // MARK: - Properties

    @Binding var isActive: Bool

    @State private var particles: [ConfettiParticle]
    @State private var startDate: Date
    @State private var isRunning: Bool

    // MARK: - Initializer

    public init(isActive: Binding<Bool>) {
        _isActive = isActive
        particles = []
        startDate = .now
        isRunning = false
    }

    // MARK: - Body

    public var body: some View {
        TimelineView(.animation(minimumInterval: 1 / 60, paused: !isRunning)) { timeline in
            Canvas { context, size in
                let elapsed = timeline.date.timeIntervalSince(startDate)
                let progress = min(elapsed / ConfettiConfiguration.ANIMATION_DURATION, 1)

                for particle in particles {
                    let x = (particle.x + particle.velocityX * elapsed) * size.width
                    let y = (particle.y + particle.velocityY * elapsed) * size.height
                    let angle = particle.rotation + particle.angularVelocity * elapsed
                    let opacity = particle.opacity * (1 - max(0, progress - 0.6) / 0.4)

                    let rect = CGRect(
                        x: -particle.width / 2,
                        y: -particle.height / 2,
                        width: particle.width,
                        height: particle.height)

                    let transform = CGAffineTransform(translationX: x, y: y)
                        .rotated(by: angle)

                    var path = Path(rect)
                    path = path.applying(transform)

                    context.fill(path, with: .color(particle.color.opacity(opacity)))
                }
            }
        }
        // onAppear fires when the view is first inserted into the hierarchy,
        // i.e. when showConfetti flips to true — the correct trigger point.
        .onAppear {
            launch()
        }
        .allowsHitTesting(false)
    }

    // MARK: - Private

    private func launch() {
        particles = (0 ..< ConfettiConfiguration.PARTICLE_COUNT).map { _ in ConfettiParticle.random() }
        startDate = .now
        isRunning = true

        // Festive haptics: success notification on launch, then three medium impacts.
        let notif = UINotificationFeedbackGenerator()
        notif.notificationOccurred(.success)

        let impact = UIImpactFeedbackGenerator(style: .medium)
        Task {
            if #available(iOS 16.0, *) {
                try? await Task.sleep(for: .milliseconds(300))
            } else {
                try? await Task.sleep(nanoseconds: 300 * 1_000_000)
            }

            impact.impactOccurred()

            if #available(iOS 16.0, *) {
                try? await Task.sleep(for: .milliseconds(300))
            } else {
                try? await Task.sleep(nanoseconds: 300 * 1_000_000)
            }

            impact.impactOccurred()

            if #available(iOS 16.0, *) {
                try? await Task.sleep(for: .milliseconds(300))
            } else {
                try? await Task.sleep(nanoseconds: 300 * 1_000_000)
            }

            impact.impactOccurred()

            if #available(iOS 16.0, *) {
                try? await Task.sleep(for: .seconds(ConfettiConfiguration.ANIMATION_DURATION - 0.9))
            } else {
                let seconds = ConfettiConfiguration.ANIMATION_DURATION - 0.9
                if seconds > 0 {
                    try? await Task.sleep(nanoseconds: UInt64(seconds * 1_000_000_000))
                }
            }

            isRunning = false
            isActive = false
            particles = []
        }
    }
}

// MARK: - Extension of Notification

extension Notification.Name {

    /// Posted when the easter egg confetti is triggered.
    public static let easterEggConfettiFound = Notification.Name("miso.easterEggFound.confetti")
}
#endif
