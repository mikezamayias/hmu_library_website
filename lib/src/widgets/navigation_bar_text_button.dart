import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NavigationBarTextButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String? string;

  const NavigationBarTextButton({
    Key? key,
    this.onPressed,
    this.string,
  }) : super(key: key);

  @override
  _NavigationBarTextButtonState createState() =>
      _NavigationBarTextButtonState();
}

class _NavigationBarTextButtonState extends State<NavigationBarTextButton> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: widget.onPressed,
      child: Text(
        widget.string ?? '',
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(0xFFFFFFFF),
        ),
      ),
      style: NeumorphicStyle(
        shape: NeumorphicShape.convex,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(60)),
        depth: 30,
        color: const Color(0xFFA9915D),
      ),
    );
  }
}
