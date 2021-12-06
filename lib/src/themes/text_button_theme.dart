import 'package:flutter/material.dart';

TextButtonThemeData textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.all(15),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(
      Colors.white,
    ),
    textStyle: MaterialStateProperty.all<TextStyle>(
      const TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.w500,
        color: Color(0xFF1A4859),
      ),
    ),
    foregroundColor: MaterialStateProperty.all<Color>(
      Colors.white,
    ),
    overlayColor: MaterialStateProperty.all<Color>(
      const Color(0xFF1A4859).withOpacity(0.1),
    ),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
    ),
  ),
);
