import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

import '../models/validators.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final Function(String)? onChanged;
  final double? height;
  final double? width;
  final VoidCallback? onEditingComplete;
  final Function(String)? onFieldSubmitted;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    this.onChanged,
    this.height,
    this.width,
    this.onEditingComplete,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String _fieldType =
        validateField.keys.contains(labelText.camelCase)
            ? labelText.camelCase
            : 'else';
    print('_CustomTextFormFieldState._fieldType: $_fieldType');
    print('validateField.keys: ${validateField.keys}');
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        height: height ?? MediaQuery.of(context).size.height * 0.15,
        width: width ?? MediaQuery.of(context).size.width * 0.24,
        child: TextFormField(
          obscureText: _fieldType.contains('password') ? true : false,
          onChanged: onChanged ?? (value) {},
          onEditingComplete: onEditingComplete ?? () {},
          onFieldSubmitted: onFieldSubmitted ?? (value) {},
          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.start,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) => validateField[_fieldType](value),
          controller: controller,
          cursorColor: const Color(0xFF1A4859),
          decoration: InputDecoration(
            focusColor: const Color(0xFF1A4859),
            labelText: labelText,
            hintText: hintText,
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
          style: const TextStyle(
            color: Color(0xFF1A4859),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
