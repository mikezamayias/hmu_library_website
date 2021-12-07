import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TabBarTheme tabBarTheme = TabBarTheme(
  indicator: const UnderlineTabIndicator(
    borderSide: BorderSide(
      width: 3,
      color: Color(0xFFA9915D),
    ),
  ),
  indicatorSize: TabBarIndicatorSize.tab,
  labelColor: const Color(0xFFA9915D),
  labelStyle: TextStyle(
    fontSize: 21,
    fontFamily: GoogleFonts.montserrat().fontFamily,
  ),
  unselectedLabelColor: const Color(0xFF1A4859),
  unselectedLabelStyle: TextStyle(
    fontSize: 21,
    fontFamily: GoogleFonts.montserrat().fontFamily,
  ),
);
