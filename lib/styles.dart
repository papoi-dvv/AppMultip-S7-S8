import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Centralized visual language for Flutter People Manager - V2.
///
/// The system is Cupertino-first and keeps a thin Material compatibility layer
/// while the app migrates screen by screen to native iOS widgets.
class AppColors {
  AppColors._();

  // Sakura palette.
  static const Color sakuraPink = Color(0xFFFF8FB7);
  static const Color sakuraPinkLight = Color(0xFFFFD9E7);
  static const Color sakuraPinkSoft = Color(0xFFFFEEF5);
  static const Color oldRose = Color(0xFFB94E75);
  static const Color deepMagenta = Color(0xFF8F2F5A);
  static const Color matcha = Color(0xFFA8CFA3);
  static const Color matchaDeep = Color(0xFF5F8F62);

  // Washi paper neutrals.
  static const Color snowPetal = Color(0xFFFFFBF7);
  static const Color washi = Color(0xFFF8F1EA);
  static const Color ricePaper = Color(0xFFFFF7F1);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceTranslucent = Color(0xEFFFFFFF);
  static const Color line = Color(0xFFEEDBE3);
  static const Color divider = Color(0x1FB94E75);

  // Text.
  static const Color ink = Color(0xFF2F2630);
  static const Color inkMuted = Color(0xFF766A72);
  static const Color inkSoft = Color(0xFF9C8D96);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // Feedback.
  static const Color error = Color(0xFFC84A6F);
  static const Color errorBackground = Color(0xFFFFEDF3);
  static const Color success = matchaDeep;
  static const Color successBackground = Color(0xFFF0F8ED);

  // Shadows.
  static const Color sakuraShadow = Color(0x24B94E75);
  static const Color softShadow = Color(0x14000000);

  // Legacy semantic aliases.
  static const Color primary = sakuraPink;
  static const Color secondary = snowPetal;
  static const Color accent = oldRose;
  static const Color background = snowPetal;
  static const Color border = line;
  static const Color textPrimary = ink;
  static const Color textSecondary = inkMuted;
  static const Color textHint = inkSoft;
}

class AppSpacing {
  AppSpacing._();

  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double xxxl = 32;

  static const EdgeInsets page = EdgeInsets.symmetric(
    horizontal: xxl,
    vertical: xl,
  );
  static const EdgeInsets card = EdgeInsets.symmetric(
    horizontal: xl,
    vertical: lg,
  );
  static const EdgeInsets field = EdgeInsets.symmetric(
    horizontal: lg,
    vertical: md,
  );
  static const EdgeInsets listTile = EdgeInsets.symmetric(
    horizontal: lg,
    vertical: md,
  );
}

class AppRadius {
  AppRadius._();

  static const double sm = 10;
  static const double md = 14;
  static const double lg = 18;
  static const double xl = 24;
  static const double pill = 100;

  static const BorderRadius small = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius medium = BorderRadius.all(Radius.circular(md));
  static const BorderRadius large = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius extraLarge = BorderRadius.all(Radius.circular(xl));
  static const BorderRadius full = BorderRadius.all(Radius.circular(pill));
}

class AppTextStyles {
  AppTextStyles._();

  static const String? _fontFamily = null; // Uses San Francisco on iOS.

  static const TextStyle titleLarge = TextStyle(
    inherit: false,
    fontFamily: _fontFamily,
    color: AppColors.ink,
    fontSize: 30,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.4,
    height: 1.14,
  );

  static const TextStyle titleMedium = TextStyle(
    inherit: false,
    fontFamily: _fontFamily,
    color: AppColors.ink,
    fontSize: 22,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.25,
    height: 1.2,
  );

  static const TextStyle bodyText = TextStyle(
    inherit: false,
    fontFamily: _fontFamily,
    color: AppColors.ink,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    height: 1.38,
  );

  static const TextStyle captionText = TextStyle(
    inherit: false,
    fontFamily: _fontFamily,
    color: AppColors.inkMuted,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.45,
    height: 1.35,
  );

  static const TextStyle errorText = TextStyle(
    inherit: false,
    fontFamily: _fontFamily,
    color: AppColors.error,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.25,
    height: 1.3,
  );

  static const TextStyle buttonPrimary = TextStyle(
    inherit: false,
    fontFamily: _fontFamily,
    color: AppColors.textOnPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
    height: 1.2,
  );

  static const TextStyle buttonSecondary = TextStyle(
    inherit: false,
    fontFamily: _fontFamily,
    color: AppColors.oldRose,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.35,
    height: 1.2,
  );

  static TextStyle get placeholder =>
      bodyText.copyWith(color: AppColors.inkSoft);

  static const TextStyle navigationTitle = TextStyle(
    inherit: false,
    fontFamily: _fontFamily,
    color: AppColors.ink,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
    height: 1.2,
  );
}

class AppGradients {
  AppGradients._();

  static const LinearGradient washiPaper = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.snowPetal,
      AppColors.ricePaper,
      AppColors.sakuraPinkSoft,
    ],
    stops: [0, 0.58, 1],
  );

  static const LinearGradient sakuraBloom = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.sakuraPink, AppColors.oldRose],
  );
}

class AppShadows {
  AppShadows._();

  static const List<BoxShadow> zen = [
    BoxShadow(
      color: AppColors.softShadow,
      blurRadius: 18,
      offset: Offset(0, 8),
    ),
    BoxShadow(
      color: AppColors.sakuraShadow,
      blurRadius: 28,
      offset: Offset(0, 10),
      spreadRadius: -10,
    ),
  ];

  static const List<BoxShadow> button = [
    BoxShadow(
      color: AppColors.sakuraShadow,
      blurRadius: 18,
      offset: Offset(0, 8),
    ),
  ];
}

class AppDecorations {
  AppDecorations._();

  static const BoxDecoration pageBackground = BoxDecoration(
    gradient: AppGradients.washiPaper,
  );

  static const BoxDecoration translucentBar = BoxDecoration(
    color: Color(0xDFFFFBF7),
    border: Border(bottom: BorderSide(color: AppColors.divider, width: 0.5)),
  );

  static const BoxDecoration card = BoxDecoration(
    color: AppColors.surfaceTranslucent,
    borderRadius: AppRadius.large,
    border: Border.fromBorderSide(
      BorderSide(color: AppColors.line, width: 0.8),
    ),
    boxShadow: AppShadows.zen,
  );

  static const BoxDecoration gridCard = BoxDecoration(
    color: AppColors.surfaceTranslucent,
    borderRadius: AppRadius.large,
    border: Border.fromBorderSide(
      BorderSide(color: AppColors.line, width: 0.8),
    ),
    boxShadow: AppShadows.zen,
  );

  static const BoxDecoration listTile = BoxDecoration(
    color: AppColors.surfaceTranslucent,
    borderRadius: AppRadius.medium,
    border: Border.fromBorderSide(
      BorderSide(color: AppColors.divider, width: 0.7),
    ),
  );

  static const BoxDecoration sakuraPetal = BoxDecoration(
    color: AppColors.sakuraPinkSoft,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(18),
      topRight: Radius.circular(18),
      bottomLeft: Radius.circular(18),
      bottomRight: Radius.circular(4),
    ),
  );

  static BoxDecoration status({required bool isSuccess}) => BoxDecoration(
    color: isSuccess ? AppColors.successBackground : AppColors.errorBackground,
    borderRadius: AppRadius.medium,
    border: Border.fromBorderSide(
      BorderSide(
        color: isSuccess ? AppColors.matcha : AppColors.error,
        width: 0.8,
      ),
    ),
  );
}

class AppCupertinoTheme {
  AppCupertinoTheme._();

  static const CupertinoThemeData data = CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.sakuraPink,
    primaryContrastingColor: AppColors.textOnPrimary,
    scaffoldBackgroundColor: AppColors.snowPetal,
    barBackgroundColor: Color(0xDFFFFBF7),
    textTheme: CupertinoTextThemeData(
      primaryColor: AppColors.sakuraPink,
      textStyle: AppTextStyles.bodyText,
      actionTextStyle: AppTextStyles.buttonSecondary,
      navTitleTextStyle: AppTextStyles.navigationTitle,
      navLargeTitleTextStyle: AppTextStyles.titleLarge,
      tabLabelTextStyle: AppTextStyles.captionText,
    ),
  );
}

class AppInputStyles {
  AppInputStyles._();

  static const EdgeInsets padding = AppSpacing.field;

  static const BoxDecoration cupertinoDecoration = BoxDecoration(
    color: Color(0xCCFFFFFF),
    borderRadius: AppRadius.medium,
    border: Border.fromBorderSide(BorderSide(color: AppColors.line, width: 1)),
  );

  static const BoxDecoration cupertinoFocusedDecoration = BoxDecoration(
    color: Color(0xF7FFFFFF),
    borderRadius: AppRadius.medium,
    border: Border.fromBorderSide(
      BorderSide(color: AppColors.sakuraPink, width: 1.4),
    ),
    boxShadow: [
      BoxShadow(color: Color(0x1FFF8FB7), blurRadius: 14, offset: Offset(0, 5)),
    ],
  );

  static const BoxDecoration cupertinoErrorDecoration = BoxDecoration(
    color: AppColors.errorBackground,
    borderRadius: AppRadius.medium,
    border: Border.fromBorderSide(
      BorderSide(color: AppColors.error, width: 1.2),
    ),
  );

  static TextStyle get style => AppTextStyles.bodyText;

  static TextStyle get placeholderStyle => AppTextStyles.placeholder;

  // Material compatibility for the current main.dart screens.
  static InputDecorationTheme get materialTheme => InputDecorationTheme(
    filled: true,
    fillColor: AppColors.surfaceTranslucent,
    contentPadding: padding,
    labelStyle: AppTextStyles.bodyText.copyWith(color: AppColors.inkMuted),
    hintStyle: placeholderStyle,
    errorStyle: AppTextStyles.errorText,
    prefixIconColor: AppColors.oldRose,
    suffixIconColor: AppColors.oldRose,
    enabledBorder: const OutlineInputBorder(
      borderRadius: AppRadius.medium,
      borderSide: BorderSide(color: AppColors.line, width: 1),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: AppRadius.medium,
      borderSide: BorderSide(color: AppColors.sakuraPink, width: 1.4),
    ),
    errorBorder: const OutlineInputBorder(
      borderRadius: AppRadius.medium,
      borderSide: BorderSide(color: AppColors.error, width: 1.2),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: AppRadius.medium,
      borderSide: BorderSide(color: AppColors.error, width: 1.4),
    ),
  );

  static InputDecoration decoration({
    required String label,
    String? hint,
    IconData? prefixIcon,
    Widget? suffix,
    String? errorText,
  }) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      errorText: errorText,
      prefixIcon: prefixIcon == null ? null : Icon(prefixIcon, size: 20),
      suffixIcon: suffix,
    );
  }
}

class AppButtonStyles {
  AppButtonStyles._();

  static const EdgeInsets primaryPadding = EdgeInsets.symmetric(
    horizontal: AppSpacing.xxl,
    vertical: 15,
  );
  static const EdgeInsets secondaryPadding = EdgeInsets.symmetric(
    horizontal: AppSpacing.lg,
    vertical: 12,
  );

  static const BoxDecoration primaryDecoration = BoxDecoration(
    gradient: AppGradients.sakuraBloom,
    borderRadius: AppRadius.medium,
    boxShadow: AppShadows.button,
  );

  static const BoxDecoration secondaryDecoration = BoxDecoration(
    color: Color(0x00FFFFFF),
    borderRadius: AppRadius.medium,
    border: Border.fromBorderSide(
      BorderSide(color: AppColors.oldRose, width: 1),
    ),
  );

  static CupertinoButton primaryButton({
    required Widget child,
    required VoidCallback? onPressed,
  }) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      borderRadius: AppRadius.medium,
      onPressed: onPressed,
      child: DecoratedBox(
        decoration: primaryDecoration,
        child: Padding(
          padding: primaryPadding,
          child: DefaultTextStyle(
            style: AppTextStyles.buttonPrimary,
            child: child,
          ),
        ),
      ),
    );
  }

  static CupertinoButton secondaryButton({
    required Widget child,
    required VoidCallback? onPressed,
  }) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      borderRadius: AppRadius.medium,
      onPressed: onPressed,
      child: DecoratedBox(
        decoration: secondaryDecoration,
        child: Padding(
          padding: secondaryPadding,
          child: DefaultTextStyle(
            style: AppTextStyles.buttonSecondary,
            child: child,
          ),
        ),
      ),
    );
  }

  static CupertinoButton logoutButton({
    required Widget child,
    required VoidCallback? onPressed,
  }) {
    return CupertinoButton(
      padding: secondaryPadding,
      onPressed: onPressed,
      child: DefaultTextStyle(
        style: AppTextStyles.buttonSecondary.copyWith(
          color: AppColors.deepMagenta,
        ),
        child: child,
      ),
    );
  }

  // Material compatibility for the current main.dart screens.
  static ButtonStyle materialPrimary({double? width}) =>
      ElevatedButton.styleFrom(
        backgroundColor: AppColors.sakuraPink,
        foregroundColor: AppColors.textOnPrimary,
        elevation: 0,
        shadowColor: Colors.transparent,
        minimumSize: Size(width ?? 0, 52),
        padding: primaryPadding,
        shape: const RoundedRectangleBorder(borderRadius: AppRadius.medium),
        textStyle: AppTextStyles.buttonPrimary,
      );

  static ButtonStyle materialSecondary() => TextButton.styleFrom(
    foregroundColor: AppColors.deepMagenta,
    padding: secondaryPadding,
    shape: const RoundedRectangleBorder(borderRadius: AppRadius.medium),
    textStyle: AppTextStyles.buttonSecondary,
  );
}

class AppBlur {
  AppBlur._();

  static ImageFilter get cupertinoBar =>
      ImageFilter.blur(sigmaX: 18, sigmaY: 18);
  static ImageFilter get softPanel => ImageFilter.blur(sigmaX: 10, sigmaY: 10);
}

class AppIcons {
  AppIcons._();

  static const IconData loginSecurity = CupertinoIcons.lock_shield;
  static const IconData people = CupertinoIcons.person_2_fill;
  static const IconData addPerson = CupertinoIcons.person_add_solid;
  static const IconData list = CupertinoIcons.list_bullet;
  static const IconData profile = CupertinoIcons.person_crop_circle;
  static const IconData success = CupertinoIcons.check_mark_circled_solid;
  static const IconData error = CupertinoIcons.exclamationmark_circle_fill;
  static const IconData sakura = CupertinoIcons.sparkles;
}

class AppTheme {
  AppTheme._();

  static CupertinoThemeData get cupertino => AppCupertinoTheme.data;

  // Material compatibility until MyApp is migrated from MaterialApp to CupertinoApp.
  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.snowPetal,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.sakuraPink,
      primary: AppColors.sakuraPink,
      secondary: AppColors.oldRose,
      surface: AppColors.surface,
      error: AppColors.error,
    ),
    textTheme: const TextTheme(
      headlineLarge: AppTextStyles.titleLarge,
      titleLarge: AppTextStyles.titleMedium,
      bodyLarge: AppTextStyles.bodyText,
      bodyMedium: AppTextStyles.bodyText,
      bodySmall: AppTextStyles.captionText,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.sakuraPink.withValues(alpha: 0.92),
      foregroundColor: AppColors.textOnPrimary,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppTextStyles.navigationTitle.copyWith(
        color: AppColors.textOnPrimary,
      ),
    ),
    inputDecorationTheme: AppInputStyles.materialTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppButtonStyles.materialPrimary(),
    ),
    textButtonTheme: TextButtonThemeData(
      style: AppButtonStyles.materialSecondary(),
    ),
    cardTheme: const CardThemeData(
      color: AppColors.surfaceTranslucent,
      elevation: 0,
      margin: EdgeInsets.symmetric(vertical: AppSpacing.sm),
      shape: RoundedRectangleBorder(
        borderRadius: AppRadius.large,
        side: BorderSide(color: AppColors.line, width: 0.8),
      ),
    ),
    listTileTheme: const ListTileThemeData(
      contentPadding: AppSpacing.listTile,
      iconColor: AppColors.oldRose,
      textColor: AppColors.ink,
      titleTextStyle: AppTextStyles.bodyText,
      subtitleTextStyle: AppTextStyles.captionText,
    ),
    dividerTheme: const DividerThemeData(
      color: AppColors.divider,
      thickness: 0.7,
    ),
  );
}

/// Short facade used by screens. Prefer these names from UI code.
class AppStyles {
  AppStyles._();

  static const Color primaryColor = AppColors.sakuraPink;
  static const Color secondaryColor = AppColors.snowPetal;
  static const Color accentColor = AppColors.oldRose;
  static const Color successColor = AppColors.matcha;
  static const Color backgroundColor = AppColors.snowPetal;

  static CupertinoThemeData get cupertinoTheme => AppTheme.cupertino;

  static TextStyle get titleLarge => AppTextStyles.titleLarge;
  static TextStyle get bodyText => AppTextStyles.bodyText;
  static TextStyle get captionText => AppTextStyles.captionText;
  static TextStyle get errorText => AppTextStyles.errorText;

  static BoxDecoration get pageBackground => AppDecorations.pageBackground;
  static BoxDecoration get textFieldDecoration =>
      AppInputStyles.cupertinoDecoration;
  static BoxDecoration get textFieldFocusedDecoration =>
      AppInputStyles.cupertinoFocusedDecoration;
  static BoxDecoration get cardDecoration => AppDecorations.card;
  static BoxDecoration get gridCardDecoration => AppDecorations.gridCard;
  static BoxDecoration get listTileDecoration => AppDecorations.listTile;

  static InputDecoration inputDecoration(String label) =>
      AppInputStyles.decoration(label: label);

  static ButtonStyle get buttonStyle => AppButtonStyles.materialPrimary();
}
