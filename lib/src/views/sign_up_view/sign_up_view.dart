import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/view_blueprint.dart';
import '../home_view/home_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool _agreed = false;
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
    return ViewBlueprint(
      child: Expanded(
        child: Form(
          key: _formKey,
          child: Stepper(
            elevation: 15,
            currentStep: _currentStep,
            steps: getSteps(),
            onStepContinue: () {
              setState(() {
                if (_currentStep < getSteps().length - 1) {
                  _currentStep = _currentStep + 1;
                } else {
                  _currentStep = 0;
                }
              });
            },
            onStepCancel: () {
              setState(() {
                if (_currentStep > 0) {
                  _currentStep = _currentStep - 1;
                } else {
                  _currentStep = 0;
                }
              });
            },
            onStepTapped: (step) {
              setState(() {
                _currentStep = step;
              });
            },
            controlsBuilder: (context, {onStepContinue, onStepCancel}) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  if (_currentStep > 0)
                    CustomElevatedButton(
                      label: 'Back',
                      onPressed: onStepCancel,
                    ),
                  if (_currentStep < getSteps().length - 1)
                    CustomElevatedButton(
                      label: 'Next',
                      onPressed: onStepContinue,
                    ),
                  if (_currentStep == getSteps().length - 1)
                    CustomElevatedButton(
                      label: 'Sign Up',
                      onPressed: () {
                        if (_agreed && _formKey.currentState!.validate()) {
                          _showDialog(
                            context,
                            'Sign up successful',
                            'You have signed up successfully. Please check your email to verify your account.',
                            [
                              CustomElevatedButton(
                                label: 'OK',
                                onPressed: () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const HomeView(),
                                  ),
                                ),
                              ),
                            ],
                          );
                        } else {
                          showToast(
                            "You must agree to Terms of Service and Privacy Policy",
                            context: context,
                          );
                        }
                      },
                    ),
                ],
              );
            },
          ),
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
              onChanged: (value) => _formKey.currentState!.save(),
              onFieldSubmitted: (value) => _formKey.currentState!.save(),
            ),
            CustomTextFormField(
              controller: _passwordController,
              labelText: 'Password',
              isRequiredField: true,
              hintText: 'Enter your password',
              onChanged: (value) => _formKey.currentState!.save(),
              onFieldSubmitted: (value) => _formKey.currentState!.save(),
            ),
            CustomTextFormField(
              controller: _confirmPasswordController,
              labelText: 'Confirm Password',
              isRequiredField: true,
              hintText: 'Confirm your password',
              onChanged: (value) => _formKey.currentState!.save(),
              onFieldSubmitted: (value) => _formKey.currentState!.save(),
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
              onChanged: (value) => _formKey.currentState!.save(),
            ),
            CustomTextFormField(
              controller: _lastNameController,
              labelText: 'Last Name',
              isRequiredField: true,
              hintText: 'Enter your last name',
              onChanged: (value) => _formKey.currentState!.save(),
            ),
            CustomTextFormField(
              controller: _phoneNumberController,
              labelText: 'Phone Number',
              isRequiredField: true,
              hintText: 'Enter your phone number',
              onChanged: (value) => _formKey.currentState!.save(),
            ),
            // add birth date picker
            CustomTextFormField(
              controller: _studentIdController,
              labelText: 'Student ID',
              isRequiredField: true,
              hintText: 'Enter your student ID',
              onChanged: (value) => _formKey.currentState!.save(),
            ),
          ],
        ),
      ),
      Step(
        title: const Text('Address'),
        content: Wrap(
          children: [
            CustomTextFormField(
              controller: _addressController,
              labelText: 'Address',
              isRequiredField: true,
              hintText: 'Enter your address',
              onChanged: (value) => _formKey.currentState!.save(),
            ),
            CustomTextFormField(
              controller: _cityController,
              labelText: 'City',
              isRequiredField: true,
              hintText: 'Enter your city',
              onChanged: (value) => _formKey.currentState!.save(),
            ),
            CustomTextFormField(
              controller: _countryController,
              labelText: 'Country',
              isRequiredField: true,
              hintText: 'Enter your country',
              onChanged: (value) => _formKey.currentState!.save(),
            ),
            CustomTextFormField(
              controller: _postalCodeController,
              labelText: 'Postal Code',
              isRequiredField: true,
              hintText: 'Enter your postal code',
              onChanged: (value) => _formKey.currentState!.save(),
            ),
          ],
        ),
      ),
      Step(
        title: const Text('Terms and Conditions'),
        content: Wrap(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => setState(() => _agreed = !_agreed),
                  child: _agreed
                      ? const Icon(
                          Icons.check_box_rounded,
                          color: Color(0xFF1A4859),
                        )
                      : const Icon(
                          Icons.check_box_outline_blank_rounded,
                          color: Color(0xFF1A4859),
                        ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'By signing up, you agree to our ',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms of Service',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => showToast(
                                "You agree to Terms of Service",
                                context: context,
                              ),
                      ),
                      const TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => showToast(
                                "You agree to Privacy Policy",
                                context: context,
                              ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ];
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
