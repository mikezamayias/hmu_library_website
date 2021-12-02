import 'package:flutter/material.dart';

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ButtonStyle(
    elevation: MaterialStateProperty.all<double>(6),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.all(24),
    ),
    overlayColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return const Color(0xFF1A4859);
        }
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed)) {
          return const Color(0xFFA9915D);
        }
        return null;
      },
    ),
    backgroundColor: MaterialStateProperty.all<Color>(
      const Color(0xFFA9915D),
    ),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(60)),
      ),
    ),
    shadowColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return const Color(0xFF1A4859);
        }
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed)) {
          return const Color(0xFFA9915D);
        }
        return null;
      },
    ),
    side: MaterialStateProperty.all<BorderSide>(
      const BorderSide(color: Color(0xFF1A4859), width: 3),
    ),
    textStyle: MaterialStateProperty.all<TextStyle>(
      const TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  ),
);
