import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/widgets/custom_text_form_field.dart';
import 'package:hmu_library_website/src/widgets/navigation_bar_text_button.dart';

import '../../widgets/page_blueprint.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return PageBlueprint(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      children: [
        const CusotmTextFormField(
          labelText: 'Email',
        ),
        const CusotmTextFormField(
          labelText: 'Password',
          obscureText: true,
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
