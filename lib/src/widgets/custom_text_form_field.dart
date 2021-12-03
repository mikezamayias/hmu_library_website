import 'package:flutter/material.dart';

import 'package:hmu_library_website/src/model/validators.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String fieldType;
  final String labelText;
  final String hintText;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.fieldType,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.24,
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (widget.fieldType == 'email') {
              return isValidEmail(value!);
            }
          },
          controller: widget.controller,
          cursorColor: const Color(0xFF1A4859),
          decoration: InputDecoration(
            labelText: widget.labelText,
            hintText: widget.hintText,
            labelStyle: const TextStyle(
              color: Color(0xFFA9915D),
            ),
            hintStyle: const TextStyle(
              color: Color(0xFFA9915D),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelStyle: const TextStyle(
              color: Color(0xFF1A4859),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60),
              gapPadding: 6,
              borderSide: const BorderSide(
                color: Color(0xFF1A4859),
                width: 3,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60),
              gapPadding: 6,
              borderSide: const BorderSide(
                color: Color(0xFF1A4859),
                width: 3,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60),
              gapPadding: 6,
              borderSide: const BorderSide(
                color: Color(0xFFA9915D),
                width: 3,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60),
              gapPadding: 6,
              borderSide: BorderSide(
                color: Colors.red.shade800,
                width: 3,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60),
              gapPadding: 6,
              borderSide: BorderSide(
                color: Colors.red.shade800,
                width: 3,
              ),
            ),
          ),
          style: const TextStyle(
            color: Color(0xFF1A4859),
          ),
        ),
      ),
    );
  }
}
