import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/home_page/home_page.dart';

class HMULibraryWebsite extends StatefulWidget {
  const HMULibraryWebsite({Key? key}) : super(key: key);

  @override
  _HMULibraryWebsiteState createState() => _HMULibraryWebsiteState();
}

class _HMULibraryWebsiteState extends State<HMULibraryWebsite> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'HMU Library Website',
      home: SafeArea(
        child: HomePage(),
      ),
    );
  }
}
