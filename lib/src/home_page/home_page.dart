import 'package:flutter/material.dart';

import '../widgets/footer.dart';
import '../widgets/navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: const [
              NavigationBar(),
              Spacer(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
