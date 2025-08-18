import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';
import 'app_typography.dart';

/// Modern theme configuration for the healthcare patient app
class AppTheme {
  AppTheme._();

  /// Light theme configuration
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: _lightColorScheme,
      textTheme: _textTheme,
      appBarTheme: _lightAppBarTheme,
      cardTheme: _cardTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      textButtonTheme: _textButtonTheme,
      inputDecorationTheme: _inputDecorationTheme,
      bottomNavigationBarTheme: _bottomNavigationBarTheme,
      navigationBarTheme: _navigationBarTheme,
      chipTheme: _chipTheme,
      dividerTheme: _dividerTheme,
      listTileTheme: _listTileTheme,
      dialogTheme: _dialogTheme,
      snackBarTheme: _snackBarTheme,
      bottomSheetTheme: _bottomSheetTheme,
      tabBarTheme: _tabBarTheme,
      switchTheme: _switchTheme,
      checkboxTheme: _checkboxTheme,
      radioTheme: _radioTheme,
      sliderTheme: _sliderTheme,
      progressIndicatorTheme: _progressIndicatorTheme,
      scaffoldBackgroundColor: AppColors.background,
      splashColor: AppColors.primary.withOpacity(0.1),
      highlightColor: AppColors.primary.withOpacity(0.05),
    );
  }

  /// Dark theme configuration
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: _darkColorScheme,
      textTheme: _textTheme,
      appBarTheme: _darkAppBarTheme,
      cardTheme: _darkCardTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      textButtonTheme: _textButtonTheme,
      inputDecorationTheme: _darkInputDecorationTheme,
      bottomNavigationBarTheme: _darkBottomNavigationBarTheme,
      navigationBarTheme: _darkNavigationBarTheme,
      chipTheme: _darkChipTheme,
      dividerTheme: _darkDividerTheme,
      listTileTheme: _darkListTileTheme,
      dialogTheme: _darkDialogTheme,
      snackBarTheme: _darkSnackBarTheme,
      bottomSheetTheme: _darkBottomSheetTheme,
      tabBarTheme: _darkTabBarTheme,
      switchTheme: _switchTheme,
      checkboxTheme: _checkboxTheme,
      radioTheme: _radioTheme,
      sliderTheme: _sliderTheme,
      progressIndicatorTheme: _progressIndicatorTheme,
      scaffoldBackgroundColor: AppColors.darkBackground,
      splashColor: AppColors.primary.withOpacity(0.1),
      highlightColor: AppColors.primary.withOpacity(0.05),
    );
  }

  // Color Schemes
  static const ColorScheme _lightColorScheme = ColorScheme.light(
    primary: AppColors.primary,
    onPrimary: AppColors.textOnPrimary,
    primaryContainer: AppColors.primaryContainer,
    onPrimaryContainer: AppColors.textPrimary,
    secondary: AppColors.secondary,
    onSecondary: AppColors.textOnSecondary,
    secondaryContainer: AppColors.secondaryContainer,
    onSecondaryContainer: AppColors.textPrimary,
    tertiary: AppColors.medicationPrimary,
    onTertiary: AppColors.textOnPrimary,
    error: AppColors.error,
    onError: AppColors.textOnPrimary,
    errorContainer: AppColors.errorLight,
    onErrorContainer: AppColors.textPrimary,
    background: AppColors.background,
    onBackground: AppColors.onBackground,
    surface: AppColors.surface,
    onSurface: AppColors.onSurface,
    surfaceVariant: AppColors.surfaceVariant,
    onSurfaceVariant: AppColors.onSurfaceVariant,
    outline: AppColors.border,
    outlineVariant: AppColors.borderLight,
    shadow: AppColors.shadow,
    scrim: Colors.black54,
    inverseSurface: AppColors.textPrimary,
    onInverseSurface: AppColors.background,
    inversePrimary: AppColors.primaryLight,
  );

  static const ColorScheme _darkColorScheme = ColorScheme.dark(
    primary: AppColors.primaryLight,
    onPrimary: AppColors.textPrimary,
    primaryContainer: AppColors.primaryDark,
    onPrimaryContainer: AppColors.textOnPrimary,
    secondary: AppColors.secondaryLight,
    onSecondary: AppColors.textPrimary,
    secondaryContainer: AppColors.secondaryDark,
    onSecondaryContainer: AppColors.textOnSecondary,
    tertiary: AppColors.medicationSecondary,
    onTertiary: AppColors.textPrimary,
    error: AppColors.error,
    onError: AppColors.textOnPrimary,
    errorContainer: Color(0x33DC2626), // AppColors.error with 20% opacity
    onErrorContainer: AppColors.error,
    background: AppColors.darkBackground,
    onBackground: AppColors.darkOnBackground,
    surface: AppColors.darkSurface,
    onSurface: AppColors.darkOnSurface,
    surfaceVariant: AppColors.darkSurfaceVariant,
    onSurfaceVariant: AppColors.darkOnSurfaceVariant,
    outline: AppColors.darkBorder,
    outlineVariant: Color(0x804B5563), // AppColors.darkBorder with 50% opacity
    shadow: Colors.black87,
    scrim: Colors.black87,
    inverseSurface: AppColors.surface,
    onInverseSurface: AppColors.textPrimary,
    inversePrimary: AppColors.primary,
  );

  // Text Theme
  static TextTheme get _textTheme => TextTheme(
    displayLarge: AppTypography.displayLarge,
    displayMedium: AppTypography.displayMedium,
    displaySmall: AppTypography.displaySmall,
    headlineLarge: AppTypography.headlineLarge,
    headlineMedium: AppTypography.headlineMedium,
    headlineSmall: AppTypography.headlineSmall,
    titleLarge: AppTypography.titleLarge,
    titleMedium: AppTypography.titleMedium,
    titleSmall: AppTypography.titleSmall,
    bodyLarge: AppTypography.bodyLarge,
    bodyMedium: AppTypography.bodyMedium,
    bodySmall: AppTypography.bodySmall,
    labelLarge: AppTypography.labelLarge,
    labelMedium: AppTypography.labelMedium,
    labelSmall: AppTypography.labelSmall,
  );

  // App Bar Themes
  static AppBarTheme get _lightAppBarTheme => AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 1,
    backgroundColor: AppColors.background,
    foregroundColor: AppColors.textPrimary,
    surfaceTintColor: AppColors.primary,
    titleTextStyle: AppTypography.appBarTitle.copyWith(
      color: AppColors.textPrimary,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.textPrimary,
      size: 24,
    ),
    actionsIconTheme: const IconThemeData(
      color: AppColors.textPrimary,
      size: 24,
    ),
    centerTitle: false,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  );

  static AppBarTheme get _darkAppBarTheme => AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 1,
    backgroundColor: AppColors.darkBackground,
    foregroundColor: AppColors.darkOnBackground,
    surfaceTintColor: AppColors.primaryLight,
    titleTextStyle: AppTypography.appBarTitle.copyWith(
      color: AppColors.darkOnBackground,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.darkOnBackground,
      size: 24,
    ),
    actionsIconTheme: const IconThemeData(
      color: AppColors.darkOnBackground,
      size: 24,
    ),
    centerTitle: false,
    systemOverlayStyle: SystemUiOverlayStyle.light,
  );

  // Card Theme
  static CardThemeData get _cardTheme => CardThemeData(
    elevation: 2,
    shadowColor: AppColors.shadow,
    surfaceTintColor: AppColors.surface,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  );

  static CardThemeData get _darkCardTheme => CardThemeData(
    elevation: 2,
    shadowColor: Colors.black87,
    surfaceTintColor: AppColors.darkSurface,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  );

  // Button Themes
  static ElevatedButtonThemeData get _elevatedButtonTheme => ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 2,
      shadowColor: AppColors.shadow,
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.textOnPrimary,
      disabledBackgroundColor: AppColors.border,
      disabledForegroundColor: AppColors.textTertiary,
      textStyle: AppTypography.buttonText,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      minimumSize: const Size(120, 48),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  static OutlinedButtonThemeData get _outlinedButtonTheme => OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.textTertiary,
      textStyle: AppTypography.buttonText,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      minimumSize: const Size(120, 48),
      side: const BorderSide(color: AppColors.primary, width: 1.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  static TextButtonThemeData get _textButtonTheme => TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.textTertiary,
      textStyle: AppTypography.buttonText,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      minimumSize: const Size(80, 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  // Input Decoration Theme
  static InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
    filled: true,
    fillColor: AppColors.surfaceVariant,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.border),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.border),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.borderFocus, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.error, width: 2),
    ),
    labelStyle: AppTypography.inputLabel,
    hintStyle: AppTypography.inputHint,
    errorStyle: AppTypography.errorText,
    floatingLabelStyle: AppTypography.inputLabel.copyWith(
      color: AppColors.primary,
    ),
  );

  static InputDecorationTheme get _darkInputDecorationTheme => InputDecorationTheme(
    filled: true,
    fillColor: AppColors.darkSurfaceVariant,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.darkBorder),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.darkBorder),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.primaryLight, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.error, width: 2),
    ),
    labelStyle: AppTypography.inputLabel.copyWith(color: AppColors.darkOnSurface),
    hintStyle: AppTypography.inputHint.copyWith(color: AppColors.darkOnSurfaceVariant),
    errorStyle: AppTypography.errorText,
    floatingLabelStyle: AppTypography.inputLabel.copyWith(
      color: AppColors.primaryLight,
    ),
  );

  // Navigation Themes
  static BottomNavigationBarThemeData get _bottomNavigationBarTheme => BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: AppColors.background,
    selectedItemColor: AppColors.primary,
    unselectedItemColor: AppColors.textSecondary,
    selectedLabelStyle: AppTypography.navigationLabel,
    unselectedLabelStyle: AppTypography.navigationLabel,
    elevation: 8,
  );

  static BottomNavigationBarThemeData get _darkBottomNavigationBarTheme => BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: AppColors.darkSurface,
    selectedItemColor: AppColors.primaryLight,
    unselectedItemColor: AppColors.darkOnSurfaceVariant,
    selectedLabelStyle: AppTypography.navigationLabel,
    unselectedLabelStyle: AppTypography.navigationLabel,
    elevation: 8,
  );

  static NavigationBarThemeData get _navigationBarTheme => NavigationBarThemeData(
    backgroundColor: AppColors.background,
    indicatorColor: AppColors.primaryContainer,
    surfaceTintColor: AppColors.primary,
    shadowColor: AppColors.shadow,
    elevation: 3,
    labelTextStyle: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppTypography.navigationLabel.copyWith(color: AppColors.primary);
      }
      return AppTypography.navigationLabel.copyWith(color: AppColors.textSecondary);
    }),
    iconTheme: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return const IconThemeData(color: AppColors.primary, size: 24);
      }
      return const IconThemeData(color: AppColors.textSecondary, size: 24);
    }),
  );

  static NavigationBarThemeData get _darkNavigationBarTheme => NavigationBarThemeData(
    backgroundColor: AppColors.darkSurface,
    indicatorColor: AppColors.primaryDark,
    surfaceTintColor: AppColors.primaryLight,
    shadowColor: Colors.black87,
    elevation: 3,
    labelTextStyle: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppTypography.navigationLabel.copyWith(color: AppColors.primaryLight);
      }
      return AppTypography.navigationLabel.copyWith(color: AppColors.darkOnSurfaceVariant);
    }),
    iconTheme: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return const IconThemeData(color: AppColors.primaryLight, size: 24);
      }
      return const IconThemeData(color: AppColors.darkOnSurfaceVariant, size: 24);
    }),
  );

  // Additional Component Themes
  static ChipThemeData get _chipTheme => ChipThemeData(
    backgroundColor: AppColors.surfaceVariant,
    selectedColor: AppColors.primaryContainer,
    disabledColor: AppColors.borderLight,
    labelStyle: AppTypography.labelMedium,
    secondaryLabelStyle: AppTypography.labelMedium,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );

  static ChipThemeData get _darkChipTheme => ChipThemeData(
    backgroundColor: AppColors.darkSurfaceVariant,
    selectedColor: AppColors.primaryDark,
    disabledColor: AppColors.darkBorder,
    labelStyle: AppTypography.labelMedium.copyWith(color: AppColors.darkOnSurface),
    secondaryLabelStyle: AppTypography.labelMedium.copyWith(color: AppColors.darkOnSurface),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );

  static DividerThemeData get _dividerTheme => const DividerThemeData(
    color: AppColors.borderLight,
    thickness: 1,
    space: 1,
  );

  static DividerThemeData get _darkDividerTheme => const DividerThemeData(
    color: AppColors.darkBorder,
    thickness: 1,
    space: 1,
  );

  static ListTileThemeData get _listTileTheme => ListTileThemeData(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    titleTextStyle: AppTypography.titleMedium,
    subtitleTextStyle: AppTypography.bodySmall,
    leadingAndTrailingTextStyle: AppTypography.labelMedium,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );

  static ListTileThemeData get _darkListTileTheme => ListTileThemeData(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    titleTextStyle: AppTypography.titleMedium.copyWith(color: AppColors.darkOnSurface),
    subtitleTextStyle: AppTypography.bodySmall.copyWith(color: AppColors.darkOnSurfaceVariant),
    leadingAndTrailingTextStyle: AppTypography.labelMedium.copyWith(color: AppColors.darkOnSurface),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );

  static DialogThemeData get _dialogTheme => DialogThemeData(
    backgroundColor: AppColors.background,
    surfaceTintColor: AppColors.surface,
    elevation: 8,
    shadowColor: AppColors.shadow,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    titleTextStyle: AppTypography.headlineSmall,
    contentTextStyle: AppTypography.bodyMedium,
  );

  static DialogThemeData get _darkDialogTheme => DialogThemeData(
    backgroundColor: AppColors.darkSurface,
    surfaceTintColor: AppColors.darkSurfaceVariant,
    elevation: 8,
    shadowColor: Colors.black87,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    titleTextStyle: AppTypography.headlineSmall.copyWith(color: AppColors.darkOnSurface),
    contentTextStyle: AppTypography.bodyMedium.copyWith(color: AppColors.darkOnSurface),
  );

  static SnackBarThemeData get _snackBarTheme => SnackBarThemeData(
    backgroundColor: AppColors.textPrimary,
    contentTextStyle: AppTypography.bodyMedium.copyWith(color: AppColors.background),
    actionTextColor: AppColors.primaryLight,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    behavior: SnackBarBehavior.floating,
    elevation: 6,
  );

  static SnackBarThemeData get _darkSnackBarTheme => SnackBarThemeData(
    backgroundColor: AppColors.darkOnSurface,
    contentTextStyle: AppTypography.bodyMedium.copyWith(color: AppColors.darkBackground),
    actionTextColor: AppColors.primaryLight,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    behavior: SnackBarBehavior.floating,
    elevation: 6,
  );

  static BottomSheetThemeData get _bottomSheetTheme => const BottomSheetThemeData(
    backgroundColor: AppColors.background,
    surfaceTintColor: AppColors.surface,
    elevation: 8,
    shadowColor: AppColors.shadow,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
  );

  static BottomSheetThemeData get _darkBottomSheetTheme => const BottomSheetThemeData(
    backgroundColor: AppColors.darkSurface,
    surfaceTintColor: AppColors.darkSurfaceVariant,
    elevation: 8,
    shadowColor: Colors.black87,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
  );

  static TabBarThemeData get _tabBarTheme => TabBarThemeData(
    labelColor: AppColors.primary,
    unselectedLabelColor: AppColors.textSecondary,
    labelStyle: AppTypography.tabLabel,
    unselectedLabelStyle: AppTypography.tabLabel,
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(color: AppColors.primary, width: 2),
    ),
    indicatorSize: TabBarIndicatorSize.label,
  );

  static TabBarThemeData get _darkTabBarTheme => TabBarThemeData(
    labelColor: AppColors.primaryLight,
    unselectedLabelColor: AppColors.darkOnSurfaceVariant,
    labelStyle: AppTypography.tabLabel,
    unselectedLabelStyle: AppTypography.tabLabel,
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(color: AppColors.primaryLight, width: 2),
    ),
    indicatorSize: TabBarIndicatorSize.label,
  );

  static SwitchThemeData get _switchTheme => SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppColors.primary;
      }
      return AppColors.border;
    }),
    trackColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppColors.primaryContainer;
      }
      return AppColors.borderLight;
    }),
  );

  static CheckboxThemeData get _checkboxTheme => CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppColors.primary;
      }
      return Colors.transparent;
    }),
    checkColor: MaterialStateProperty.all(AppColors.textOnPrimary),
    side: const BorderSide(color: AppColors.border, width: 2),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
  );

  static RadioThemeData get _radioTheme => RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppColors.primary;
      }
      return AppColors.border;
    }),
  );

  static SliderThemeData get _sliderTheme => const SliderThemeData(
    activeTrackColor: AppColors.primary,
    inactiveTrackColor: AppColors.borderLight,
    thumbColor: AppColors.primary,
    overlayColor: AppColors.primaryContainer,
    valueIndicatorColor: AppColors.primary,
    valueIndicatorTextStyle: TextStyle(color: AppColors.textOnPrimary),
  );

  static ProgressIndicatorThemeData get _progressIndicatorTheme => const ProgressIndicatorThemeData(
    color: AppColors.primary,
    linearTrackColor: AppColors.borderLight,
    circularTrackColor: AppColors.borderLight,
  );
}
