import 'package:flutter/material.dart';

import 'pages/book_catalog_page/book_catalog_page.dart';
import 'pages/contact_page/contact_page.dart';
import 'pages/home_page/home_page.dart';
import 'pages/login_page/login_page.dart';
import 'pages/sign_up_page/sign_up_page.dart';
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
