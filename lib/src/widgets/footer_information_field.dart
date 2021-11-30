import 'package:flutter/material.dart';

class FooterInformationField extends StatefulWidget {
  final String title;
  final List<String> value;

  const FooterInformationField({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  _FooterInformationFieldState createState() => _FooterInformationFieldState();
}

class _FooterInformationFieldState extends State<FooterInformationField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 42),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widget.value.map((value) => Text(value,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )).toList(),
        ),
      ],
    );
  }
}
