import 'package:flutter/material.dart';

import '../../model/validators.dart';
import '../../widgets/navigation_bar_text_button.dart';
import '../../widgets/page_blueprint.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return PageBlueprint(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.24,
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) => isValidEmail(value!),
            controller: _emailController,
            cursorColor: const Color(0xFF1A4859),
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              labelStyle: const TextStyle(
                color: Color(0xFFA9915D),
              ),
              hintStyle: const TextStyle(
                color: Color(0xFFA9915D),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              floatingLabelStyle: const TextStyle(
                color: Color(0xFF1A4859),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
                gapPadding: 6,
                borderSide: const BorderSide(
                  color: Color(0xFF1A4859),
                  width: 3,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
                gapPadding: 6,
                borderSide: const BorderSide(
                  color: Color(0xFF1A4859),
                  width: 3,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
                gapPadding: 6,
                borderSide: const BorderSide(
                  color: Color(0xFFA9915D),
                  width: 3,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
                gapPadding: 6,
                borderSide: BorderSide(
                  color: Colors.red.shade800,
                  width: 3,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
                gapPadding: 6,
                borderSide: BorderSide(
                  color: Colors.red.shade800,
                  width: 3,
                ),
              ),
            ),
            style: const TextStyle(
              color: Color(0xFF1A4859),
            ),
          ),
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
