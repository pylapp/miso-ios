// Software: MISO iOS
// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: Copyright (c) Pierre-Yves Lapersonne

import MISOThemesContract
import MISOThemesMISOBlueCoat
import Testing

/// Checks if the composite semantic tokens of fonts, as defined in the BlueCoat theme, have expected values and relationships
/// between them.
struct FontCompositeSemanticTokensValuesTests {

    private var theme: MISOTheme

    init() {
        theme = BlueCoatTheme()
    }

    // MARK: - Display

    @Test func displaySmallSmallerThanDisplayMedium() throws {
        #expect(theme.fonts.displaySmall < theme.fonts.displayMedium)
    }

    @Test func displayMediumSmallerThanDisplayLarge() throws {
        #expect(theme.fonts.displayMedium < theme.fonts.displayLarge)
    }

    // MARK: - Heading

    @Test func headingSmallSmallerThanHeadingMedium() throws {
        #expect(theme.fonts.headingSmall < theme.fonts.headingMedium)
    }

    @Test func headingMediumSmallerThanHeadingLarge() throws {
        #expect(theme.fonts.headingMedium < theme.fonts.headingLarge)
    }

    @Test func headingLargeSmallerThanHeadingXlarge() throws {
        #expect(theme.fonts.headingLarge < theme.fonts.headingXLarge)
    }

    // MARK: - Body

    @Test func bodyDefaultSmallSmallerThanBodyDefaultMedium() throws {
        #expect(theme.fonts.bodyDefaultSmall < theme.fonts.bodyDefaultMedium)
    }

    @Test func bodyDefaultMediumSmallerThanBodyDefaultLarge() throws {
        #expect(theme.fonts.bodyDefaultMedium < theme.fonts.bodyDefaultLarge)
    }

    @Test func bodyModerateSmallSmallerThanBodyModerateMedium() throws {
        #expect(theme.fonts.bodyModerateSmall < theme.fonts.bodyModerateMedium)
    }

    @Test func bodyModerateMediumSmallerThanBodyModerateLarge() throws {
        #expect(theme.fonts.bodyModerateMedium < theme.fonts.bodyModerateLarge)
    }

    @Test func bodyStrongSmallSmallerThanBodyStrongMedium() throws {
        #expect(theme.fonts.bodyStrongSmall < theme.fonts.bodyStrongMedium)
    }

    @Test func bodyStrongMediumSmallerThanBodyStrongLarge() throws {
        #expect(theme.fonts.bodyStrongMedium < theme.fonts.bodyStrongLarge)
    }

    // MARK: - Label

    @Test func labelDefaultSmallSmallerThanLabelDefaultMedium() throws {
        #expect(theme.fonts.labelDefaultSmall < theme.fonts.labelDefaultMedium)
    }

    @Test func labelDefaultMediumSmallerThanLabelDefaultLarge() throws {
        #expect(theme.fonts.labelDefaultMedium < theme.fonts.labelDefaultLarge)
    }

    @Test func labelDefaultLargeSmallerThanLabelDefaultXLarge() throws {
        #expect(theme.fonts.labelDefaultLarge < theme.fonts.labelDefaultXLarge)
    }

    @Test func labelModerateSmallSmallerThanLabelModerateSmall() throws {
        #expect(theme.fonts.labelModerateSmall < theme.fonts.labelModerateMedium)
    }

    @Test func labelModerateMediumSmallerThanLabelModerateLarge() throws {
        #expect(theme.fonts.labelModerateMedium < theme.fonts.labelModerateLarge)
    }

    @Test func labelModerateLargeSmallerThanLabelModerateXLarge() throws {
        #expect(theme.fonts.labelModerateLarge < theme.fonts.labelModerateXLarge)
    }

    @Test func labelStrongSmallSmallerThanLabelStrongMedium() throws {
        #expect(theme.fonts.labelStrongSmall < theme.fonts.labelStrongMedium)
    }

    @Test func labelStrongMediumSmallerThanLabelStrongLarge() throws {
        #expect(theme.fonts.labelStrongMedium < theme.fonts.labelStrongLarge)
    }

    @Test func labelStrongLargeSmallerThanLabelStrongXLarge() throws {
        #expect(theme.fonts.labelStrongLarge < theme.fonts.labelStrongXLarge)
    }
}
