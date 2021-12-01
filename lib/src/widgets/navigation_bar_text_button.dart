import 'package:flutter/material.dart';

class NavigationBarTextButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String? label;
  final IconData? icon;

  const NavigationBarTextButton({
    Key? key,
    this.onPressed,
    this.label,
    this.icon,
  }) : super(key: key);

  @override
  _NavigationBarTextButtonState createState() =>
      _NavigationBarTextButtonState();
}

class _NavigationBarTextButtonState extends State<NavigationBarTextButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 12),
      child: ElevatedButton.icon(
        onPressed: widget.onPressed,
        icon: Icon(widget.icon),
        label: Text(
          widget.label!,
        ),
      ),
    );
  }
}
