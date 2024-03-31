import 'package:flutter/material.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'MyriadPro',
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: AppColors.secondary,
      onPrimaryContainer: Color(0xFF00210E),
      secondary: Color(0xFF4F6353),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFD2E8D4),
      onSecondaryContainer: Color(0xFF0D1F13),
      tertiary: Color(0xFF006B5D),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFF76F8E0),
      onTertiaryContainer: Color(0xFF00201B),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      background: Color(0xFFFBFDF8),
      onBackground: Color(0xFF191C19),
      surface: Color(0xFFFBFDF8),
      onSurface: Color(0xFF191C19),
      surfaceVariant: Color(0xFFDDE5DB),
      onSurfaceVariant: Color(0xFF414942),
      outline: Color(0xFF717971),
      onInverseSurface: Color(0xFFF0F1EC),
      inverseSurface: Color(0xFF2E312E),
      inversePrimary: Color(0xFF37E187),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF006D3B),
    ),
    scaffoldBackgroundColor: Colors.white,
    // appBarTheme: const AppBarTheme(
    //   backgroundColor: Colors.white,
    //   iconTheme: IconThemeData(color: Colors.black),
    //   systemOverlayStyle: SystemUiOverlayStyle(
    //     statusBarColor: Colors.white,
    //     statusBarIconBrightness: Brightness.dark,
    //   ),
    // ),
    dividerColor: Colors.transparent,
    dividerTheme: const DividerThemeData(
        space: 32, thickness: 1, color: AppColors.lightGrey),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
    ),
  );
}
