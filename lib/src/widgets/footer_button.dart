import 'package:flutter/material.dart';

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
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: const Border(
          bottom: BorderSide(color: Color(0xFF1A4859), width: 3),
          top: BorderSide(color: Color(0xFF1A4859), width: 3),
          right: BorderSide(color: Color(0xFF1A4859), width: 3),
          left: BorderSide(color: Color(0xFF1A4859), width: 3),
        ),
        color: const Color(0xFFA9915D),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF1A4859).withOpacity(0.15),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: IconButton(
        onPressed: widget.onPressed,
        icon: Icon(widget.icon),
        color: Colors.white,
        iconSize: 36,
      ),
    );
  }
}
