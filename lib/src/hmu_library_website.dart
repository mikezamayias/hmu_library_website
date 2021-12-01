import 'package:flutter/material.dart';

import 'package:hmu_library_website/src/home_page/home_page.dart';
import 'package:hmu_library_website/src/widgets/navigation_bar_text_button.dart';

import 'themes/current_theme.dart';

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
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  centerTitle: false,
                  backgroundColor: const Color(0xFFA9915D),
                  shadowColor: const Color(0xFF1A4859),
                  elevation: 15,
                  forceElevated: true,
                  toolbarHeight: 75,
                  pinned: false,
                  floating: true,
                  actions: [
                    NavigationBarTextButton(
                      label: 'Home',
                      icon: Icons.home_rounded,
                      onPressed: () {},
                    ),
                    NavigationBarTextButton(
                      label: 'Sign Up',
                      icon: Icons.person_add_rounded,
                      onPressed: () {},
                    ),
                    NavigationBarTextButton(
                      label: 'Login',
                      icon: Icons.login_rounded,
                      onPressed: () {},
                    ),
                    NavigationBarTextButton(
                      label: 'Book Catalog',
                      icon: Icons.library_books_rounded,
                      onPressed: () {},
                    ),
                    NavigationBarTextButton(
                      label: 'Contact',
                      icon: Icons.alternate_email_outlined,
                      onPressed: () {},
                    ),
                  ],
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const HomePage(),
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
