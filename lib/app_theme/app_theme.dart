import 'package:flutter/material.dart';

import 'constants.dart';

class AppTheme with ChangeNotifier {
  static bool _isDarkTheme = false;
  static final _lightTheme = ThemeData.light();
  static final _darkTheme = ThemeData.dark();

  ThemeMode get themeMode => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  static ThemeData get _getBaseTheme => _isDarkTheme ? _darkTheme : _lightTheme;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return _getBaseTheme.copyWith(
        primaryColor: primaryColor,
        colorScheme: _colorScheme,
        textTheme: _textThemeData,
        elevatedButtonTheme: _elevatedButtonThemeData,
        inputDecorationTheme: _inputDecorationTheme);
  }

  static ThemeData get darkTheme {
    return _getBaseTheme.copyWith(
        textTheme: _textThemeData,
        elevatedButtonTheme: _elevatedButtonThemeData,
        colorScheme: _colorScheme,
        inputDecorationTheme: _inputDecorationTheme);
  }

  static TextTheme get _textThemeData {
    final baseTextTheme = _getBaseTheme.textTheme;
    return baseTextTheme.copyWith(
        headlineLarge: baseTextTheme.headlineLarge?.copyWith(
          color: primaryColor,
          fontWeight: FontWeight.w900,
          fontSize: 30,
          fontFamily: 'Poppins',
        ),
        headlineSmall: baseTextTheme.headlineSmall?.copyWith(
            color: primaryColor,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            fontFamily: 'Poppins'),
        titleSmall: baseTextTheme.titleSmall
            ?.copyWith(color: primaryColor, fontSize: 12, fontFamily: 'Poppins')

        // headline2: _headline2,
        // headline3: _headline3,
        // headline4: _headline4,
        // headline5: _headline5,
        // headline6: _headline6,
        // bodyText1: _bodyText2,
        // bodyText2: _bodyText2,
        );
  }

  static InputDecorationTheme get _inputDecorationTheme {
    return InputDecorationTheme(
      isDense: true,
      filled: true,
      fillColor: Colors.grey[50],
      labelStyle: const TextStyle(
        fontFamily: 'SofiaPro',
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
      suffixStyle: const TextStyle(
        fontFamily: 'SofiaPro',
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
      hintStyle: const TextStyle(
        fontFamily: 'SofiaPro',
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      prefixStyle: const TextStyle(
        fontFamily: 'SofiaPro',
        fontWeight: FontWeight.w500,
        fontSize: 10,
      ),
      disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide()),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: secondaryColor)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(width: 1.5, color: primaryColor)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.red)),
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonThemeData {
    final textTheme = _getBaseTheme.textTheme;
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          side: const BorderSide(color: borderColor, width: 1.5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(vertical: 20),
          textStyle: _buttonTextStyle),
    );
  }

  static TextStyle? get _buttonTextStyle {
    final baseStyle = _getBaseTheme.textTheme.headlineSmall;
    return baseStyle?.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 16,
        fontFamily: 'Poppins');
  }

  static TextStyle? get _headline2 {
    final baseStyle = _getBaseTheme.textTheme.headline2;
    return baseStyle?.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: _isDarkTheme ? Colors.white : Colors.black);
  }

  static TextStyle? get _headline3 {
    final baseStyle = _getBaseTheme.textTheme.headline3;
    return baseStyle?.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: _isDarkTheme ? Colors.white : Colors.black);
  }

  static TextStyle? get _headline4 {
    final baseStyle = _getBaseTheme.textTheme.headline4;
    return baseStyle?.copyWith(
      fontSize: 13,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle? get _headline5 {
    final baseStyle = _getBaseTheme.textTheme.headline4;
    return baseStyle?.copyWith(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: _isDarkTheme ? Colors.white : Colors.black);
  }

  static TextStyle? get _headline6 {
    final baseStyle = _getBaseTheme.textTheme.headline3;
    return baseStyle?.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: _isDarkTheme ? Colors.white : Colors.black);
  }

  static TextStyle? get _bodyText1 {
    final baseStyle = _getBaseTheme.textTheme.headline3;
    return baseStyle?.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle? get _bodyText2 {
    final baseStyle = _getBaseTheme.textTheme.headline3;
    return baseStyle?.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    );
  }

  static ColorScheme get _colorScheme => _getBaseTheme.colorScheme.copyWith(
      primary: primaryColor,
      secondary: _isDarkTheme ? Colors.lightGreen : primaryColor,
      onSecondary: Colors.white);
}
