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
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('assets/images/hmu_lib_5.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(0.72),
            BlendMode.lighten,
          ),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
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
                const SizedBox(height: 30),
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
        ),
      ),
    );
  }
}
