import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/views/home_view/home_view.dart';

import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/view_blueprint.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  static final TextEditingController _passwordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewBlueprint(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextFormField(
              controller: _emailController,
              labelText: 'Email',
              hintText: 'Enter your email',
              isRequiredField: true,
              onChanged: (value) => _formKey.currentState!.save(),
            ),
            CustomTextFormField(
              controller: _passwordController,
              labelText: 'Password',
              hintText: 'Enter your password',
              isRequiredField: true,
              onChanged: (value) => _formKey.currentState!.save(),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: CustomElevatedButton(
                label: 'Login',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _showDialog(
                      context,
                      'Login Successful',
                      'You have logged in',
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
                    _showDialog(
                      context,
                      'Error',
                      'Please enter your email and password',
                      [
                        CustomElevatedButton(
                          label: 'OK',
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
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
