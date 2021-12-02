import 'package:flutter/material.dart';

import 'package:hmu_library_website/src/model/validators.dart';

class CusotmTextFormField extends StatefulWidget {
  final String labelText;
  final bool? obscureText;
  final TextEditingController? controller;
  final ValidatorType? validatorType;
  final String? confrimPassword;
  final String? hintText;

  const CusotmTextFormField({
    Key? key,
    required this.labelText,
    this.obscureText,
    this.controller,
    this.validatorType,
    this.confrimPassword,
    this.hintText,
  }) : super(key: key);

  @override
  _CusotmTextFormFieldState createState() => _CusotmTextFormFieldState();
}

class _CusotmTextFormFieldState extends State<CusotmTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.3,
        child: TextFormField(
          expands: true,
          maxLines: null,
          minLines: null,
          textAlignVertical: TextAlignVertical.center,
          obscureText: widget.obscureText ?? false,
          controller: widget.controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onFieldSubmitted: (_) {
            String errorMessage = validate(
              widget.controller!.text,
              widget.validatorType!,
              widget.confrimPassword,
            )!;
            if (errorMessage != 'success') {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(
                    'Invalid ${widget.labelText}',
                    style: const TextStyle(
                      color: Color(0xFF1A4859),
                    ),
                  ),
                  content: Text(
                    errorMessage,
                    style: const TextStyle(
                      color: Color(0xFF1A4859),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
              );
            }
          },
          validator: (value) => validate(
            value!,
            widget.validatorType!,
            widget.confrimPassword!,
          ),
          cursorColor: const Color(0xFFA9915D),
          decoration: InputDecoration(
            hintText: widget.hintText,
            labelText: '${widget.labelText}*',
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
            
          ),
        ),
      ),
    );
  }
}
