import 'package:flutter/material.dart';

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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const NavigationBar(),
          Expanded(
            child: Container(
              color: Colors.white,
              child: const Center(
                child: Text('Home'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}