import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/model/validators.dart';

class CusotmTextFormField extends StatefulWidget {
  final String labelText;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? validator;
  final ValidatorType? validatorType;
  final String? confrimPassword;

  const CusotmTextFormField({
    Key? key,
    required this.labelText,
    this.obscureText,
    this.controller,
    this.validator,
    this.validatorType,
    this.confrimPassword,
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
          decoration: InputDecoration(
            labelText: widget.labelText,
          ),
          obscureText: widget.obscureText ?? false,
          controller: widget.controller,
          validator: (value) => validate(
            value!,
            widget.validatorType!,
            widget.confrimPassword!,
          ),
        ),
      ),
    );
  }
}
