import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class FooterButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final IconData icon;

  const FooterButton({
    Key? key,
    this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  _FooterButtonState createState() => _FooterButtonState();
}

class _FooterButtonState extends State<FooterButton> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: widget.onPressed!,
      child: NeumorphicIcon(
        widget.icon,
        size: 42,
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(60)),
          depth: 6,
          color: Colors.white,
          lightSource: LightSource.top,
          shadowDarkColor: const Color(0xFF1A4859),
        ),
      ),
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(60)),
        depth: 6,
        color: const Color(0xFFA9915D),
        lightSource: LightSource.top,
        shadowDarkColor: const Color(0xFF1A4859),
      ),
    );
  }
}
