import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hmu_library_website/src/themes/tab_bar_theme.dart';

import 'elevated_button_theme.dart';
import 'text_theme.dart';
import 'text_button_theme.dart';

CurrentTheme currentTheme = CurrentTheme();

class CurrentTheme with ChangeNotifier {
  static bool _isLightTheme = true;

  ThemeMode get currentTheme =>
      _isLightTheme ? ThemeMode.light : ThemeMode.dark;

  void toggleTheme() {
    _isLightTheme = !_isLightTheme;
    notifyListeners();
  }

  static ThemeData get darkTheme {
    return ThemeData();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: GoogleFonts.montserrat().fontFamily,
      brightness: _isLightTheme ? Brightness.light : Brightness.dark,
      shadowColor: const Color(0xFF303030),
      primaryColor: const Color(0xFFA9915D),
      backgroundColor: const Color(0xFFF3F3F3),
      scaffoldBackgroundColor: const Color(0xFFF3F3F3),
      textButtonTheme: textButtonTheme,
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: const Color(0xFF1A4859),
      ),
      elevatedButtonTheme: elevatedButtonThemeData,
      tabBarTheme: tabBarTheme,
    );
  }
}
