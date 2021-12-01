import 'package:flutter/material.dart';


import '../model/footer_information_field.dart';
import 'footer_button.dart';
import 'footer_information_field.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  int _currentIndex = 0;

  List<FooterInformationField> footerInformationFields = [
    FooterInformationField(
      title: addressInformationField.title,
      value: addressInformationField.value,
    ),
    FooterInformationField(
      title: emailInformationField.title,
      value: emailInformationField.value,
    ),
    FooterInformationField(
      title: telephoneInformationField.title,
      value: telephoneInformationField.value,
    ),
    FooterInformationField(
      title: workingHoursInformationField.title,
      value: workingHoursInformationField.value,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      color: const Color(0xFFEEE9DF),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          FooterButton(
            icon: Icons.arrow_back_rounded,
            onPressed: () => setState(() {
              _currentIndex =
                  (_currentIndex + 1) % footerInformationFields.length;
            }),
          ),
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: footerInformationFields[_currentIndex],
          ),
          const Spacer(),
          FooterButton(
            icon: Icons.arrow_forward_rounded,
            onPressed: () => setState(() {
              _currentIndex =
                  (_currentIndex - 1) % footerInformationFields.length;
            }),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
