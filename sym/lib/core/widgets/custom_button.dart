import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_typography.dart';

/// Custom button widget with modern design and healthcare-appropriate styling
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonType type;
  final ButtonSize size;
  final IconData? icon;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? width;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.type = ButtonType.primary,
    this.size = ButtonSize.medium,
    this.icon,
    this.isLoading = false,
    this.backgroundColor,
    this.foregroundColor,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isEnabled = onPressed != null && !isLoading;

    Widget buttonChild = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isLoading) ...[
          SizedBox(
            width: _getIconSize(),
            height: _getIconSize(),
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(
                foregroundColor ?? _getForegroundColor(theme),
              ),
            ),
          ),
          const SizedBox(width: 8),
        ] else if (icon != null) ...[
          Icon(
            icon,
            size: _getIconSize(),
            color: foregroundColor ?? _getForegroundColor(theme),
          ),
          const SizedBox(width: 8),
        ],
        Text(
          text,
          style: _getTextStyle(theme),
        ),
      ],
    );

    switch (type) {
      case ButtonType.primary:
        return SizedBox(
          width: width,
          height: _getHeight(),
          child: ElevatedButton(
            onPressed: isEnabled ? onPressed : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor ?? AppColors.primary,
              foregroundColor: foregroundColor ?? AppColors.textOnPrimary,
              disabledBackgroundColor: AppColors.border,
              disabledForegroundColor: AppColors.textTertiary,
              elevation: isEnabled ? 2 : 0,
              shadowColor: AppColors.shadow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(_getBorderRadius()),
              ),
              padding: _getPadding(),
            ),
            child: buttonChild,
          ),
        );

      case ButtonType.secondary:
        return SizedBox(
          width: width,
          height: _getHeight(),
          child: OutlinedButton(
            onPressed: isEnabled ? onPressed : null,
            style: OutlinedButton.styleFrom(
              foregroundColor: foregroundColor ?? AppColors.primary,
              disabledForegroundColor: AppColors.textTertiary,
              side: BorderSide(
                color: isEnabled
                    ? (backgroundColor ?? AppColors.primary)
                    : AppColors.border,
                width: 1.5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(_getBorderRadius()),
              ),
              padding: _getPadding(),
            ),
            child: buttonChild,
          ),
        );

      case ButtonType.text:
        return SizedBox(
          width: width,
          height: _getHeight(),
          child: TextButton(
            onPressed: isEnabled ? onPressed : null,
            style: TextButton.styleFrom(
              foregroundColor: foregroundColor ?? AppColors.primary,
              disabledForegroundColor: AppColors.textTertiary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(_getBorderRadius()),
              ),
              padding: _getPadding(),
            ),
            child: buttonChild,
          ),
        );

      case ButtonType.danger:
        return SizedBox(
          width: width,
          height: _getHeight(),
          child: ElevatedButton(
            onPressed: isEnabled ? onPressed : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor ?? AppColors.error,
              foregroundColor: foregroundColor ?? AppColors.textOnPrimary,
              disabledBackgroundColor: AppColors.border,
              disabledForegroundColor: AppColors.textTertiary,
              elevation: isEnabled ? 2 : 0,
              shadowColor: AppColors.shadow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(_getBorderRadius()),
              ),
              padding: _getPadding(),
            ),
            child: buttonChild,
          ),
        );
    }
  }

  double _getHeight() {
    switch (size) {
      case ButtonSize.small:
        return 36;
      case ButtonSize.medium:
        return 48;
      case ButtonSize.large:
        return 56;
    }
  }

  double _getBorderRadius() {
    switch (size) {
      case ButtonSize.small:
        return 8;
      case ButtonSize.medium:
        return 12;
      case ButtonSize.large:
        return 16;
    }
  }

  EdgeInsetsGeometry _getPadding() {
    switch (size) {
      case ButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
      case ButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 12);
      case ButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 32, vertical: 16);
    }
  }

  double _getIconSize() {
    switch (size) {
      case ButtonSize.small:
        return 16;
      case ButtonSize.medium:
        return 20;
      case ButtonSize.large:
        return 24;
    }
  }

  TextStyle _getTextStyle(ThemeData theme) {
    final baseStyle = switch (size) {
      ButtonSize.small => AppTypography.labelMedium,
      ButtonSize.medium => AppTypography.buttonText,
      ButtonSize.large => AppTypography.labelLarge,
    };

    return baseStyle.copyWith(
      color: foregroundColor ?? _getForegroundColor(theme),
      fontWeight: FontWeight.w600,
    );
  }

  Color _getForegroundColor(ThemeData theme) {
    switch (type) {
      case ButtonType.primary:
        return AppColors.textOnPrimary;
      case ButtonType.secondary:
      case ButtonType.text:
        return AppColors.primary;
      case ButtonType.danger:
        return AppColors.textOnPrimary;
    }
  }
}

/// Floating Action Button with modern design
class CustomFloatingActionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  final String? tooltip;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool mini;

  const CustomFloatingActionButton({
    super.key,
    this.onPressed,
    required this.icon,
    this.tooltip,
    this.backgroundColor,
    this.foregroundColor,
    this.mini = false,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: tooltip,
      mini: mini,
      backgroundColor: backgroundColor ?? AppColors.primary,
      foregroundColor: foregroundColor ?? AppColors.textOnPrimary,
      elevation: 6,
      highlightElevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(mini ? 12 : 16),
      ),
      child: Icon(
        icon,
        size: mini ? 20 : 24,
      ),
    );
  }
}

/// Icon button with modern styling
class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? backgroundColor;
  final double? size;
  final String? tooltip;
  final EdgeInsetsGeometry? padding;

  const CustomIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.color,
    this.backgroundColor,
    this.size,
    this.tooltip,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: backgroundColor != null
          ? BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(12),
            )
          : null,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color ?? theme.colorScheme.onSurface,
          size: size ?? 24,
        ),
        tooltip: tooltip,
        padding: padding ?? const EdgeInsets.all(8),
        constraints: const BoxConstraints(
          minWidth: 40,
          minHeight: 40,
        ),
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}

enum ButtonType {
  primary,
  secondary,
  text,
  danger,
}

enum ButtonSize {
  small,
  medium,
  large,
}
