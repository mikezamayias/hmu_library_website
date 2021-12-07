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
    final String _fieldType = validateField.keys.contains(labelText.camelCase)
        ? labelText.camelCase
        : 'else';
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
          cursorColor: const Color(0xFFA9915D),
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            floatingLabelStyle: const TextStyle(
              color: Color(0xFF1A4859),
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
            isDense: true,
            errorMaxLines: 1,
            errorText: null,
            errorStyle: const TextStyle(
              color: Colors.transparent,
              fontSize: 0,
            ),
            alignLabelWithHint: true,
            focusColor: const Color(0xFFA9915D),
            labelStyle: const TextStyle(
              color: Color(0xFF1A4859),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFA9915D),
                width: 3.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(21)),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFA9915D),
                width: 3.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(21)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFA9915D),
                width: 3.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(21)),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red.shade700,
                width: 3.0,
                style: BorderStyle.solid,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(21)),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red.shade700,
                width: 3.0,
                style: BorderStyle.solid,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(21)),
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
