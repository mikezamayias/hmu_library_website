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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
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
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 42),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.value
                  .map(
                    (value) => SelectableText(
                      value,
                      scrollPhysics: const NeverScrollableScrollPhysics(),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
