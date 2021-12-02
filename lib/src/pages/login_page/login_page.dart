import 'package:flutter/material.dart';
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
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Email',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Password',
          ),
        ),
        NavigationBarTextButton(
          label: 'Login',
          onPressed: () => debugPrint('Login'),
        )
      ],
    );
  }
}
