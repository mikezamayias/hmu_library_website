import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/widgets/custom_elevated_button.dart';

import '../../widgets/custom_text_form_field.dart';
import '../../widgets/page_blueprint.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  int _currentStep = 0;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _textController = TextEditingController();

  doStep(int step) {
    setState(() => _currentStep += step);
  }

  @override
  Widget build(BuildContext context) {
    return PageBlueprint(
      child: Center(
        child: Stepper(
          elevation: 9,
          onStepCancel: () {
            if (_currentStep > 0) {
              setState(() => doStep(-1));
            }
          },
          onStepContinue: () {
            if (_currentStep < 2) {
              setState(() => doStep(1));
            }
          },
          onStepTapped: (step) {
            setState(() {
              _currentStep = step;
            });
          },
          steps: <Step>[
            Step(
              title: const Text('Name'),
              content: CustomTextFormField(
                controller: _nameController,
                hintText: 'Enter your name',
                labelText: '',
              ),
            ),
            Step(
              title: const Text('Email'),
              content: CustomTextFormField(
                controller: _emailController,
                hintText: 'Enter your email',
                labelText: '',
              ),
            ),
            Step(
              title: const Text('Text'),
              content: CustomTextFormField(
                width: MediaQuery.of(context).size.width * 0.8,
                controller: _textController,
                hintText: 'Enter your message',
                labelText: '',
              ),
            ),
          ],
          currentStep: _currentStep,
          controlsBuilder: (
            BuildContext context, {
            VoidCallback? onStepContinue,
            VoidCallback? onStepCancel,
          }) {
            return Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: CustomElevatedButton(
                    onPressed: onStepCancel,
                    label: 'Cancel',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: CustomElevatedButton(
                    onPressed: onStepContinue,
                    label: _currentStep != 2 ? 'Continue' : 'Send',
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
