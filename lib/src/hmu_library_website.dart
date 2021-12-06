import 'package:flutter/material.dart';

import 'themes/current_theme.dart';
import 'views/book_catalog_view/book_catalog_view.dart';
import 'views/contact_view/contact_view.dart';
import 'views/home_view/home_view.dart';
import 'views/login_view/login_view.dart';
import 'views/sign_up_view/sign_up_view.dart';

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
      routes: {
        '/home': (context) => const HomePage(),
        '/signup': (context) => const SignUpPage(),
        '/login': (context) => const LoginPage(),
        '/bookcatalog': (context) => const BookCatalogPage(),
        '/contact': (context) => const ContactPage(),
      },
      initialRoute: '/home',
      title: 'HMU Library Website',
    );
  }
}
