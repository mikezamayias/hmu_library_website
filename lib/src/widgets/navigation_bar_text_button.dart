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
    return widget.icon != null
        ? ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            child: ElevatedButton.icon(
              onPressed: widget.onPressed,
              icon: Icon(widget.icon),
              label: Text(
                widget.label!,
              ),
            ),
          )
        : ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            child: ElevatedButton(
              onPressed: widget.onPressed,
              child: Text(
                widget.label!,
              ),
            ),
          );
  }
}
