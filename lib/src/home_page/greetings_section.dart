import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/model/greeting.dart';

class GreetingsSection extends StatefulWidget {
  const GreetingsSection({Key? key}) : super(key: key);

  @override
  _GreetingsSectionState createState() => _GreetingsSectionState();
}

class _GreetingsSectionState extends State<GreetingsSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/hmu_lib_5.jpg',
          height: MediaQuery.of(context).size.height*0.6,
          fit: BoxFit.contain,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                greeting.title,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Opacity(
                opacity: 0,
                child: SelectableText(
                  greeting.title,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SelectableText(
                greeting.text,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
