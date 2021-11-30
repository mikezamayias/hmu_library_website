import 'package:flutter/material.dart';

TextButtonThemeData textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.transparent),
    textStyle: MaterialStateProperty.all(
      const TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.w500,
        color: Color(0xFF303030)
      ),
    ),
  ),
);
