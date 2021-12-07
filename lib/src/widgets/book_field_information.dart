import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookFieldInformation extends StatelessWidget {
  final String header;
  final String content;

  const BookFieldInformation({
    Key? key,
    required this.header,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: SelectableText(
        header,
        style: const TextStyle(
          color: Color(0xFF1A4859),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 9),
        child: SelectableText(
          content,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: const Color(0xFF1A4859),
            fontSize: 21,
            fontFamily: GoogleFonts.gfsDidot().fontFamily,
          ),
        ),
      ),
    );
  }
}
