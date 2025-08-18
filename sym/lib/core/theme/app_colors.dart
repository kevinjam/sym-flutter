import 'package:flutter/material.dart';

/// Modern, calming color palette designed for healthcare/patient applications
/// Inspired by modern design systems with accessibility in mind
class AppColors {
  AppColors._();

  // Primary Colors - Calming blue-green palette
  static const Color primary = Color(0xFF00A896); // Teal green - trust and healing
  static const Color primaryLight = Color(0xFF4ECDC4); // Light teal
  static const Color primaryDark = Color(0xFF028090); // Dark teal
  static const Color primaryContainer = Color(0xFFE8F8F5); // Very light teal

  // Secondary Colors - Warm accent
  static const Color secondary = Color(0xFF6C63FF); // Soft purple - modern and friendly
  static const Color secondaryLight = Color(0xFF9C88FF);
  static const Color secondaryDark = Color(0xFF4C46CC);
  static const Color secondaryContainer = Color(0xFFF0EFFF);

  // Neutral Colors - Sophisticated grays
  static const Color surface = Color(0xFFFAFAFA); // Off-white background
  static const Color surfaceVariant = Color(0xFFF5F5F5);
  static const Color background = Color(0xFFFFFFFF);
  static const Color onBackground = Color(0xFF1A1A1A);
  static const Color onSurface = Color(0xFF2D2D2D);
  static const Color onSurfaceVariant = Color(0xFF6B6B6B);

  // Status Colors - Healthcare appropriate
  static const Color success = Color(0xFF10B981); // Green for positive outcomes
  static const Color successLight = Color(0xFFD1FAE5);
  static const Color warning = Color(0xFFF59E0B); // Amber for caution
  static const Color warningLight = Color(0xFFFEF3C7);
  static const Color error = Color(0xFFEF4444); // Red for alerts
  static const Color errorLight = Color(0xFFFEE2E2);
  static const Color info = Color(0xFF3B82F6); // Blue for information
  static const Color infoLight = Color(0xFFDBEAFE);

  // Medication Colors - For categorization
  static const Color medicationPrimary = Color(0xFF8B5CF6); // Purple
  static const Color medicationSecondary = Color(0xFF06B6D4); // Cyan
  static const Color medicationTertiary = Color(0xFFF97316); // Orange

  // Symptom Severity Colors
  static const Color severityLow = Color(0xFF10B981); // Green
  static const Color severityMedium = Color(0xFFF59E0B); // Amber
  static const Color severityHigh = Color(0xFFEF4444); // Red
  static const Color severityCritical = Color(0xFF991B1B); // Dark red

  // Text Colors
  static const Color textPrimary = Color(0xFF1F2937);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textTertiary = Color(0xFF9CA3AF);
  static const Color textOnPrimary = Color(0xFFFFFFFF);
  static const Color textOnSecondary = Color(0xFFFFFFFF);

  // Border Colors
  static const Color border = Color(0xFFE5E7EB);
  static const Color borderLight = Color(0xFFF3F4F6);
  static const Color borderFocus = Color(0xFF00A896);

  // Shadow Colors
  static const Color shadow = Color(0x1A000000);
  static const Color shadowLight = Color(0x0D000000);

  // Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, primaryDark],
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [secondary, secondaryDark],
  );

  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFFAFAFA), Color(0xFFFFFFFF)],
  );

  // Dark Theme Colors
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color darkSurfaceVariant = Color(0xFF2D2D2D);
  static const Color darkOnBackground = Color(0xFFE0E0E0);
  static const Color darkOnSurface = Color(0xFFE0E0E0);
  static const Color darkOnSurfaceVariant = Color(0xFFB0B0B0);
  static const Color darkBorder = Color(0xFF3A3A3A);

  // Accessibility Colors - WCAG AA compliant
  static const Color accessibilityFocus = Color(0xFF005FCC);
  static const Color accessibilityHighContrast = Color(0xFF000000);
}

/// Extension to provide easy access to colors based on context
extension AppColorsExtension on BuildContext {
  ColorScheme get appColors => Theme.of(this).colorScheme;
}
