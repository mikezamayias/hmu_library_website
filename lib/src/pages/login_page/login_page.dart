import 'package:flutter/material.dart';

import '../../widgets/custom_text_form_field.dart';
import '../../widgets/navigation_bar_text_button.dart';
import '../../widgets/page_blueprint.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return PageBlueprint(
      children: [
        CustomTextFormField(
          controller: _emailController,
          labelText: 'Email',
          hintText: 'Enter your email',
        ),
        CustomTextFormField(
          controller: _passwordController,
          labelText: 'Password',
          hintText: 'Enter your password',
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: NavigationBarTextButton(
            label: 'Login',
            onPressed: () => debugPrint('Login'),
          ),
        ),
      ],
    );
  }
}
