import 'package:flutter/material.dart';

class InformationColumnFooter extends StatefulWidget {
  final String columnName;
  final VoidCallback onPressed;

  const InformationColumnFooter({
    Key? key,
    required this.columnName,
    required this.onPressed,
  }) : super(key: key);

  @override
  _InformationColumnFooterState createState() =>
      _InformationColumnFooterState();
}

class _InformationColumnFooterState extends State<InformationColumnFooter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: TextButton(
        onPressed: widget.onPressed,
        child: Text(
          'more ${widget.columnName}',
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xFF666666),
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
