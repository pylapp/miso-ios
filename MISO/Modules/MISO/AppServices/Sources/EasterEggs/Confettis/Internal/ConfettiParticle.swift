// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne
// ✿✿✿✿ ʕ •ᴥ•ʔ/ ︻デ═一

import SwiftUI

/// A single confetti particle with randomised visual properties and physics.
struct ConfettiParticle {

    /// Horizontal position as a fraction of the canvas width (0…1).
    var x: Double

    /// Vertical position as a fraction of the canvas height (0…1).
    var y: Double

    /// Horizontal drift speed (canvas-width fractions per second).
    let velocityX: Double

    /// Downward fall speed (canvas-height fractions per second).
    let velocityY: Double

    /// Rotation angle in radians, spinning over time.
    var rotation: Double

    /// Angular velocity in radians per second.
    let angularVelocity: Double

    /// Particle colour — festive palette, not tied to MISO tokens.
    let color: Color

    /// Short edge of the rectangular confetti piece, in points.
    let width: Double

    /// Long edge of the rectangular confetti piece, in points.
    let height: Double

    /// Opacity that fades out towards the end of the animation.
    var opacity: Double

    // MARK: Factory

    /// Generates a random particle originating from the top of the screen.
    static func random() -> ConfettiParticle {
        let colors: [Color] = [
            .red, .orange, .yellow, .green, .blue, .purple, .pink, .cyan,
        ]
        return ConfettiParticle(
            x: Double.random(in: 0 ... 1),
            y: Double.random(in: -0.1 ... 0),
            velocityX: Double.random(in: -0.15 ... 0.15),
            velocityY: Double.random(in: 0.2 ... 0.6),
            rotation: Double.random(in: 0 ... (2 * .pi)),
            angularVelocity: Double.random(in: -4 ... 4),
            color: colors.randomElement() ?? .red,
            width: Double.random(in: 6 ... 12),
            height: Double.random(in: 10 ... 18),
            opacity: 1)
    }
}
