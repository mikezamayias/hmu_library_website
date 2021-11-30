import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

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
      fontFamily: GoogleFonts.montserrat().fontFamily,
      brightness: _isLightTheme ? Brightness.light : Brightness.dark,
      textButtonTheme: textButtonTheme,
      textTheme: textTheme,
    );
  }
}
