import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/views/home_view/home_view.dart';

import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/view_blueprint.dart';

class ContactView extends StatefulWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  int _currentStep = 0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewBlueprint(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextFormField(
              controller: _nameController,
              labelText: 'Name',
              hintText: 'Enter your name',
              isRequiredField: true,
              onChanged: (value) => _formKey.currentState!.save(),
            ),
            CustomTextFormField(
              controller: _emailController,
              labelText: 'Email',
              hintText: 'Enter your email',
              isRequiredField: true,
              onChanged: (value) => _formKey.currentState!.save(),
            ),
            CustomTextFormField(
              controller: _textController,
              labelText: 'Message',
              hintText: 'Enter your message',
              isRequiredField: true,
              onChanged: (value) => _formKey.currentState!.save(),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: CustomElevatedButton(
                label: 'Submit',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _showDialog(context);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    return showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) => Center(
        child: AlertDialog(
          title: const Text('Thank you!'),
          content: const Text(
            'Your message has been sent. We will get back to you as soon as possible.',
          ),
          actions: <Widget>[
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
        ),
      ),
    );
  }
}
