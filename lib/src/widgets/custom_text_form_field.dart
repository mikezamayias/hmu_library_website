import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hmu_library_website/src/model/validators.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    final String _fieldType = widget.labelText.toLowerCase();
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.24,
        child: TextFormField(
          obscureText: _fieldType.toLowerCase().contains('password')
              ? true
              : false,
          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.start,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) => validateField[_fieldType](value),
          controller: widget.controller,
          cursorColor: const Color(0xFF1A4859),
          decoration: InputDecoration(
            focusColor: const Color(0xFF1A4859),
            labelText: widget.labelText,
            hintText: widget.hintText,
            labelStyle: const TextStyle(
              color: Color(0xFFA9915D),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            hintStyle: const TextStyle(
              color: Color(0xFFA9915D),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelStyle: const TextStyle(
              color: Color(0xFF1A4859),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60),
              gapPadding: 3,
              borderSide: const BorderSide(
                color: Color(0xFF1A4859),
                width: 3,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60),
              gapPadding: 3,
              borderSide: const BorderSide(
                color: Color(0xFF1A4859),
                width: 3,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60),
              gapPadding: 3,
              borderSide: const BorderSide(
                color: Color(0xFFA9915D),
                width: 3,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60),
              gapPadding: 3,
              borderSide: BorderSide(
                color: Colors.red.shade800,
                width: 3,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60),
              gapPadding: 3,
              borderSide: BorderSide(
                color: Colors.red.shade800,
                width: 3,
              ),
            ),
            errorMaxLines: 3,
            errorStyle: TextStyle(
              color: Colors.red.shade800,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: TextStyle(
            color: const Color(0xFF1A4859),
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.firaCode().fontFamily,
          ),
        ),
      ),
    );
  }
}
