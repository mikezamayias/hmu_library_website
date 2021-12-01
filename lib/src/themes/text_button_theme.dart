import 'package:flutter/material.dart';

TextButtonThemeData textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    textStyle: MaterialStateProperty.all<TextStyle>(
      const TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.w500,
        color: Color(0xFF303030),
      ),
    ),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
    ),
  ),
);
