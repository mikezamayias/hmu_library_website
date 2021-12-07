import 'package:flutter/material.dart';

class CustomTooltip extends StatelessWidget {
  final String message;
  final Widget child;

  const CustomTooltip({
    Key? key,
    required this.message,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      padding: const EdgeInsets.all(9),
      message: message,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: const Color(0xFF1A4859).withOpacity(0.9),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
      child: child,
    );
  }
}
