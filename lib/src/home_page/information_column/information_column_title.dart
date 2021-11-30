import 'package:flutter/material.dart';

class InformationColumnTitle extends StatefulWidget {
  final String string;

  const InformationColumnTitle({
    Key? key,
    required this.string,
  }) : super(key: key);

  @override
  _InformationColumnTitleState createState() => _InformationColumnTitleState();
}

class _InformationColumnTitleState extends State<InformationColumnTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        widget.string,
        style: const TextStyle(
          color: Color(0xFF333333),
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }
}
