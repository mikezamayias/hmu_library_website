import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/widgets/custom_text_form_field.dart';

import '../../widgets/page_blueprint.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  int _currentStep = 0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _postalCodeController = TextEditingController();
  final TextEditingController _studentIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PageBlueprint(
      child: Form(
        key: _formKey,
        child: Stepper(
          type: StepperType.horizontal,
          elevation: 15,
          currentStep: _currentStep,
          steps: [],
        ),
      ),
    );
  }

  List<Step> getSteps() {
    return [
      Step(
        title: const Text('Credentials'),
        content: Wrap(
          children: [
            CustomTextFormField(
              controller: _emailController,
              labelText: 'Email',
              isRequiredField: true,
              hintText: 'Enter your email',
            ),
            CustomTextFormField(
              controller: _passwordController,
              labelText: 'Password',
              isRequiredField: true,
              hintText: 'Enter your password',
            ),
            CustomTextFormField(
              controller: _confirmPasswordController,
              labelText: 'Confirm Password',
              isRequiredField: true,
              hintText: 'Confirm your password',
              confirmPassword: _passwordController.text,
            ),
          ],
        ),
      ),
      Step(
        title: const Text('Personal Details'),
        content: Wrap(
          children: [
            CustomTextFormField(
              controller: _firstNameController,
              labelText: 'First Name',
              isRequiredField: true,
              hintText: 'Enter your first name',
            ),
            CustomTextFormField(
              controller: _lastNameController,
              labelText: 'Last Name',
              isRequiredField: true,
              hintText: 'Enter your last name',
            ),
            CustomTextFormField(
              controller: _phoneNumberController,
              labelText: 'Phone Number',
              isRequiredField: true,
              hintText: 'Enter your phone number',
            ),
            CustomTextFormField(
              controller: _addressController,
              labelText: 'Address',
              isRequiredField: true,
              hintText: 'Enter your address',
            ),
            CustomTextFormField(
              controller: _cityController,
              labelText: 'City',
              isRequiredField: true,
              hintText: 'Enter your city',
            ),
            CustomTextFormField(
              controller: _countryController,
              labelText: 'Country',
              isRequiredField: true,
              hintText: 'Enter your country',
            ),
            CustomTextFormField(
              controller: _postalCodeController,
              labelText: 'Postal Code',
              isRequiredField: true,
              hintText: 'Enter your postal code',
            ),
          ],
        ),
      ),
    ];
  }
}
