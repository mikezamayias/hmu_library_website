import 'package:flutter/material.dart';


import 'themes/current_theme.dart';
import 'widgets/footer.dart';
import 'widgets/navigation_bar.dart';
import 'home_page/home_page.dart';

class HMULibraryWebsite extends StatefulWidget {
  const HMULibraryWebsite({Key? key}) : super(key: key);

  @override
  _HMULibraryWebsiteState createState() => _HMULibraryWebsiteState();
}

class _HMULibraryWebsiteState extends State<HMULibraryWebsite> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CurrentTheme.lightTheme,
      darkTheme: CurrentTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      title: 'HMU Library Website',
      home: SafeArea(
        child: Scaffold(
          body: Scrollbar(
            child: CustomScrollView(
              slivers: [
                const SliverAppBar(
                  flexibleSpace: NavigationBar(),
                  automaticallyImplyLeading: false,
                  centerTitle: false,
                  backgroundColor: Color(0xFFA9915D),
                  shadowColor: Color(0xFF1A4859),
                  elevation: 15,
                  forceElevated: true,
                  floating: true,
                  toolbarHeight: 90,
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const HomePage(),
                      const Footer(),
                    ],
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
