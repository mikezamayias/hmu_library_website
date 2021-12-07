import 'package:flutter/material.dart';

import '../../widgets/view_blueprint.dart';
import 'body_information.dart';
import 'greetings_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewBlueprint(
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
