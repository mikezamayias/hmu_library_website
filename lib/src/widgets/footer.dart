import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/model/footer_information_field.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

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
    return SimpleGestureDetector(
      onHorizontalSwipe: (direction) {
        if (direction == SwipeDirection.left) {
          setState(() {
            _currentIndex =
                (_currentIndex + 1) % footerInformationFields.length;
          });
        } else if (direction == SwipeDirection.right) {
          setState(() {
            _currentIndex =
                (_currentIndex - 1) % footerInformationFields.length;
          });
        }
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        color: const Color(0xFFEEE9DF),
        child: Center(
          child: footerInformationFields[_currentIndex],
        ),
      ),
    );
  }
}
