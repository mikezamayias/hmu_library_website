import 'package:flutter/material.dart';

import '../../widgets/page_blueprint.dart';
import 'body_information.dart';
import 'greetings_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageBlueprint(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('assets/images/hmu_lib_5.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(0.42),
            BlendMode.lighten,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          GreetingsSection(),
          SizedBox(height: 90),
          BodyInformation(),
        ],
      ),
    );
  }
}
