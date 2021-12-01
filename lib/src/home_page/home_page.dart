import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/home_page/body_information.dart';

import 'greetings_section.dart';
import '../widgets/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      child: Column(
        children: const [
          GreetingsSection(),
          BodyInformation(),
          Footer(),
        ],
      ),
    );
  }
}
