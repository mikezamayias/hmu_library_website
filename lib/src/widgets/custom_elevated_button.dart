import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String? label;
  final IconData? icon;

  const CustomElevatedButton({
    Key? key,
    this.onPressed,
    this.label,
    this.icon,
  }) : super(key: key);

  @override
  _CustomElevatedButtonState createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return widget.icon != null
        ? Padding(
          padding: const EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(60)),
            child: ElevatedButton.icon(
                onPressed: widget.onPressed,
                icon: Icon(widget.icon),
                label: Text(
                  widget.label!,
                ),
              ),
          ),
        )
        : Padding(
          padding: const EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(60)),
            child: ElevatedButton(
                onPressed: widget.onPressed,
                child: Text(
                  widget.label!,
                ),
              ),
          ),
        );
  }
}
