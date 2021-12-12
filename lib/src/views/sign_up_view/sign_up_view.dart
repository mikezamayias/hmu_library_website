import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../widgets/custom_text_form_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    bool _agreed = false;
    DateTime _dateTime = DateTime.now();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _confirmPasswordController =
        TextEditingController();
    final TextEditingController _firstNameController = TextEditingController();
    final TextEditingController _lastNameController = TextEditingController();
    final TextEditingController _phoneNumberController =
        TextEditingController();
    final TextEditingController _studentIdController = TextEditingController();
    final TextEditingController _birthdateController = TextEditingController();
    final TextEditingController _addressController = TextEditingController();
    final TextEditingController _cityController = TextEditingController();
    final TextEditingController _countryController = TextEditingController();
    final TextEditingController _postalCodeController = TextEditingController();

    final CustomTextFormField _emailFormField = CustomTextFormField(
      width: 300,
      controller: _emailController,
      labelText: 'Email',
      isRequiredField: true,
      hintText: 'Enter your email',
      onChanged: (value) => _formKey.currentState!.save(),
      onFieldSubmitted: (value) => _formKey.currentState!.save(),
    );

    final CustomTextFormField _passwordFormField = CustomTextFormField(
      width: 300,
      controller: _passwordController,
      labelText: 'Password',
      isRequiredField: true,
      hintText: 'Enter your password',
      onChanged: (value) => _formKey.currentState!.save(),
      onFieldSubmitted: (value) => _formKey.currentState!.save(),
    );

    final CustomTextFormField _confirmPasswordFormField = CustomTextFormField(
      width: 300,
      controller: _confirmPasswordController,
      labelText: 'Confirm Password',
      isRequiredField: true,
      hintText: 'Confirm your password',
      onChanged: (value) => _formKey.currentState!.save(),
      onFieldSubmitted: (value) => _formKey.currentState!.save(),
      confirmPassword: _passwordController.text,
    );

    final CustomTextFormField _firstNameFormField = CustomTextFormField(
      width: 300,
      controller: _firstNameController,
      labelText: 'First Name',
      isRequiredField: true,
      hintText: 'Enter your first name',
      onChanged: (value) => _formKey.currentState!.save(),
    );

    final CustomTextFormField _lastNameFormField = CustomTextFormField(
      width: 300,
      controller: _lastNameController,
      labelText: 'Last Name',
      isRequiredField: true,
      hintText: 'Enter your last name',
      onChanged: (value) => _formKey.currentState!.save(),
    );

    final CustomTextFormField _phoneNumberFormField = CustomTextFormField(
      width: 300,
      controller: _phoneNumberController,
      labelText: 'Phone Number',
      isRequiredField: true,
      hintText: 'Enter your phone number',
      onChanged: (value) => _formKey.currentState!.save(),
    );

    final CustomTextFormField _studentIdFormField = CustomTextFormField(
      width: 300,
      controller: _studentIdController,
      labelText: 'Student ID',
      isRequiredField: true,
      hintText: 'Enter your student ID',
      onChanged: (value) => _formKey.currentState!.save(),
    );

    final CustomTextFormField _birthdateFormField = CustomTextFormField(
      controller: _birthdateController,
      labelText: 'Birthdate',
      hintText: 'Enter your birthdate',
      isRequiredField: true,
      onChanged: (value) => _formKey.currentState!.save(),
      onTap: () async {
        DateTime? _datePicked = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
        );
        _birthdateController.text = DateFormat('d/M/y').format(_datePicked!);
        // _birthdateController.value = _birthdateController.value.copyWith(
        //   text: DateFormat('d/M/y').format(_datePicked ?? _dateTime),
        //   selection: TextSelection(
        //     baseOffset: 0,
        //     extentOffset: _birthdateController.text.length,
        //   ),
        // );
      },
    );

    final CustomTextFormField _addressFormField = CustomTextFormField(
      width: 300,
      controller: _addressController,
      labelText: 'Address',
      isRequiredField: true,
      hintText: 'Enter your address name and number',
      onChanged: (value) => _formKey.currentState!.save(),
    );

    final CustomTextFormField _cityFormField = CustomTextFormField(
      width: 300,
      controller: _cityController,
      labelText: 'City',
      isRequiredField: true,
      hintText: 'Enter your city',
      onChanged: (value) => _formKey.currentState!.save(),
    );

    final CustomTextFormField _countryFormField = CustomTextFormField(
      width: 300,
      controller: _countryController,
      labelText: 'Country',
      isRequiredField: true,
      hintText: 'Enter your country',
      onChanged: (value) => _formKey.currentState!.save(),
    );

    final CustomTextFormField _postalCodeFormField = CustomTextFormField(
      width: 300,
      controller: _postalCodeController,
      labelText: 'Postal Code',
      isRequiredField: true,
      hintText: 'Enter your postal code',
      onChanged: (value) => _formKey.currentState!.save(),
    );

    return Form(
      key: _formKey,
      child: Accordion(
        maxOpenSections: 1,
        children: [
          AccordionSection(
            header: const Text('Credentials'),
            content: Wrap(
              children: [
                _emailFormField,
                _passwordFormField,
                _confirmPasswordFormField,
              ],
            ),
          ),
          AccordionSection(
            header: const Text('Personal Details'),
            content: Wrap(
              children: [
                _firstNameFormField,
                _lastNameFormField,
                _birthdateFormField,
                _phoneNumberFormField,
                _studentIdFormField,
              ],
            ),
          ),
          AccordionSection(
            header: const Text('Address'),
            content: Wrap(
              children: [
                _addressFormField,
                _cityFormField,
                _countryFormField,
                _postalCodeFormField,
              ],
            ),
          )
        ],
      ),
    );
  }

  _showDialog(
    BuildContext context,
    String title,
    String message,
    List<Widget>? actions,
  ) {
    return showGeneralDialog(
      barrierColor: const Color(0xFF08161C).withOpacity(0.9),
      barrierDismissible: false,
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) => Center(
        child: AlertDialog(
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          titleTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1A4859),
          ),
          content: Text(
            message,
            textAlign: TextAlign.center,
          ),
          actions: actions,
          titlePadding: const EdgeInsets.symmetric(
            horizontal: 45,
            vertical: 15,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 45,
            vertical: 15,
          ),
          actionsPadding: const EdgeInsets.symmetric(
            horizontal: 45,
            vertical: 15,
          ),
          actionsAlignment: MainAxisAlignment.center,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
            side: const BorderSide(
              color: Color(0xFFA9915D),
              width: 3.0,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
