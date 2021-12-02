import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/model/validators.dart';

class CusotmTextFormField extends StatefulWidget {
  final String labelText;
  final bool? obscureText;
  final TextEditingController? controller;
  final ValidatorType? validatorType;
  final String? confrimPassword;

  const CusotmTextFormField({
    Key? key,
    required this.labelText,
    this.obscureText,
    this.controller,
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
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 3,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 3,
              ),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(
                color: Colors.red,
                width: 3,
              ),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(
                color: Colors.red,
                width: 3,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 3,
              ),
            ),
            errorStyle: const TextStyle(
              color: Colors.red,
              fontSize: 12,
            ),
            errorMaxLines: 3,
            errorText: validate(
              widget.controller!.text,
              widget.validatorType!,
              widget.confrimPassword!,
            ),
          ),
          obscureText: widget.obscureText ?? false,
          controller: widget.controller!,
          validator: (value) => validate(
            value!,
            widget.validatorType!,
            widget.confrimPassword!,
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (value) => widget.controller!.text = value,
          onEditingComplete: () {
            widget.controller!.text = widget.controller!.text.trim();
            FocusScope.of(context).unfocus();
          },
          onFieldSubmitted: (value) {
            widget.controller!.text = value;
            FocusScope.of(context).unfocus();
          },
          onTap: () => FocusScope.of(context).unfocus(),
        ),
      ),
    );
  }
}
