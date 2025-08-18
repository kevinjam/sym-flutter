import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

/// Custom card widget with modern design and healthcare-appropriate styling
class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final double? elevation;
  final BorderRadius? borderRadius;
  final VoidCallback? onTap;
  final bool showBorder;
  final Color? borderColor;
  final double borderWidth;

  const CustomCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.backgroundColor,
    this.elevation,
    this.borderRadius,
    this.onTap,
    this.showBorder = false,
    this.borderColor,
    this.borderWidth = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: backgroundColor ?? (isDark ? AppColors.darkSurface : AppColors.background),
        borderRadius: borderRadius ?? BorderRadius.circular(16),
        border: showBorder
            ? Border.all(
                color: borderColor ?? (isDark ? AppColors.darkBorder : AppColors.border),
                width: borderWidth,
              )
            : null,
        boxShadow: elevation != null && elevation! > 0
            ? [
                BoxShadow(
                  color: isDark ? Colors.black26 : AppColors.shadow,
                  blurRadius: elevation! * 2,
                  offset: Offset(0, elevation! / 2),
                ),
              ]
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius ?? BorderRadius.circular(16),
          child: Padding(
            padding: padding ?? const EdgeInsets.all(16),
            child: child,
          ),
        ),
      ),
    );
  }
}

/// Specialized card for medication items
class MedicationCard extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final bool isActive;
  final Color? accentColor;

  const MedicationCard({
    super.key,
    required this.child,
    this.onTap,
    this.isActive = true,
    this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return CustomCard(
      onTap: onTap,
      backgroundColor: isActive
          ? (isDark ? AppColors.darkSurface : AppColors.background)
          : (isDark ? AppColors.darkSurfaceVariant.withOpacity(0.5) : AppColors.surfaceVariant.withOpacity(0.5)),
      elevation: isActive ? 2 : 1,
      showBorder: true,
      borderColor: accentColor ?? AppColors.medicationPrimary,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              color: accentColor ?? AppColors.medicationPrimary,
              width: 4,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: child,
        ),
      ),
    );
  }
}

/// Specialized card for symptom items
class SymptomCard extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final String severity;

  const SymptomCard({
    super.key,
    required this.child,
    this.onTap,
    this.severity = 'low',
  });

  Color get _severityColor {
    switch (severity.toLowerCase()) {
      case 'high':
      case 'severe':
        return AppColors.severityHigh;
      case 'medium':
      case 'moderate':
        return AppColors.severityMedium;
      case 'critical':
        return AppColors.severityCritical;
      default:
        return AppColors.severityLow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: onTap,
      elevation: 2,
      showBorder: true,
      borderColor: _severityColor,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              color: _severityColor,
              width: 4,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: child,
        ),
      ),
    );
  }
}

/// Specialized card for dashboard stats
class StatsCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color? color;
  final VoidCallback? onTap;
  final String? subtitle;

  const StatsCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    this.color,
    this.onTap,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cardColor = color ?? AppColors.primary;

    return CustomCard(
      onTap: onTap,
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: cardColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: cardColor,
                  size: 24,
                ),
              ),
              const Spacer(),
              Text(
                value,
                style: theme.textTheme.headlineMedium?.copyWith(
                  color: cardColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onSurface,
            ),
          ),
          if (subtitle != null) ...[
            const SizedBox(height: 4),
            Text(
              subtitle!,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
