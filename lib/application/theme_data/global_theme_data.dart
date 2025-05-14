import 'package:flutter/material.dart';
import 'package:kaktask/application/theme_data/app_colors.dart';

class GlobalThemeData {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData get lightTheme {
    return _buildThemeData(_lightColorScheme, _lightFocusColor);
  }

  static ThemeData get darkTheme {
    return _buildThemeData(_darkColorScheme, _darkFocusColor);
  }

  static ThemeData _buildThemeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
        primaryColor: colorScheme.primary,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
        highlightColor: Colors.transparent,
        focusColor: focusColor,
        elevatedButtonTheme: _elevatedButtonThemeData,
        floatingActionButtonTheme: _floatingActionButtonThemeData,
        fontFamily: 'Poppins',
        inputDecorationTheme: _inputDecorationTheme,
        appBarTheme: _appBarTheme());
  }

  static AppBarTheme _appBarTheme() {
    return const AppBarTheme(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: themeColor,
      ),
    );
  }

  static const ColorScheme _lightColorScheme = ColorScheme(
    background: Colors.white,
    onBackground: Colors.black,
    brightness: Brightness.light,
    primary: Color(0xff825CF7),
    onPrimary: Colors.white,
    secondary: Color(0xff7755E0),
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    surface: Color(0xffF5F5F5),
    onSurface: Colors.black87,
  );

  static const ColorScheme _darkColorScheme = ColorScheme(
    background: Color(0xFF121212),
    onBackground: Colors.white,
    brightness: Brightness.dark,
    primary: Color(0xffBB86FC),
    onPrimary: Colors.black,
    secondary: Color(0xFF03DAC6),
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.white,
    surface: Color(0xFF1E1E1E),
    onSurface: Colors.white70,
  );

  static final ElevatedButtonThemeData _elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 11.5),
      minimumSize: const Size(double.infinity, 50),
      maximumSize: const Size(double.infinity, 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: themeColor,
      textStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: Colors.white,
        fontFamily: 'Poppins',
      ),
    ),
  );

  static final InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: themeColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: themeColor),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: themeColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: themeColor),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.red),
    ),
  );

  static final FloatingActionButtonThemeData _floatingActionButtonThemeData =
      FloatingActionButtonThemeData(
    backgroundColor: themeColor,
    iconSize: 24,
    elevation: 0,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
