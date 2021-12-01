import 'package:flutter/material.dart';

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ButtonStyle(
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.all(15),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(
      const Color(0xFFA9915D),
    ),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(60)),
      ),
    ),
    shadowColor: MaterialStateProperty.all<Color>(
      const Color(0xFF1A4859).withOpacity(0.15),
    ),
    side: MaterialStateProperty.all<BorderSide>(const BorderSide(
      color: Color(0xFF1A4859),
      width: 3,
    )),
    textStyle: MaterialStateProperty.all<TextStyle>(
      const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
  ),
);
