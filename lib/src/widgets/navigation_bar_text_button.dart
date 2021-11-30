import 'package:flutter/material.dart';

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
    return TextButton(
      onPressed: widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.all(9),
        child: Text(
          widget.string ?? '',
        ),
      ),
    );
  }
}
