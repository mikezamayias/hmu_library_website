import 'package:flutter/material.dart';

class CusotmTextFormField extends StatefulWidget {
  final String labelText;
  final bool? obscureText;

  const CusotmTextFormField({
    Key? key,
    required this.labelText,
    this.obscureText,
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
        ),
      ),
    );
  }
}
