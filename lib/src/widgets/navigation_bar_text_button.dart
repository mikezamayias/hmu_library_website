import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
    return ElevatedButton.icon(
      onPressed: widget.onPressed,
      icon: Icon(widget.icon),
      label: Text(
        widget.label!,
      ),
    );
    // return GestureDetector(
    //   onTap: widget.onPressed,
    //   child: Container(
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(30),
    //       border: const Border(
    //         bottom: BorderSide(color: Color(0xFF1A4859), width: 3),
    //         top: BorderSide(color: Color(0xFF1A4859), width: 3),
    //         right: BorderSide(color: Color(0xFF1A4859), width: 3),
    //         left: BorderSide(color: Color(0xFF1A4859), width: 3),
    //       ),
    //       color: const Color(0xFFA9915D),
    //       boxShadow: [
    //         BoxShadow(
    //           color: const Color(0xFF1A4859).withOpacity(0.15),
    //           blurRadius: 10,
    //           spreadRadius: 5,
    //         ),
    //       ],
    //     ),
    //     child: Padding(
    //       padding: const EdgeInsets.all(15),
    //       child: Text(
    //         widget.string ?? '',
            // style: const TextStyle(
            //   fontSize: 18,
            //   fontWeight: FontWeight.w500,
            //   color: Colors.white,
            // ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
