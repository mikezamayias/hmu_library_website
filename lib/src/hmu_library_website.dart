import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

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

class _HMULibraryWebsiteState extends State<HMULibraryWebsite>
    with TickerProviderStateMixin {
  final List<Tab> _tabs = const [
    Tab(text: 'Home'),
    Tab(text: 'Sign Up'),
    Tab(text: 'Login'),
    Tab(text: 'Book Catalog'),
    Tab(text: 'Contact'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: _tabs.length,
      vsync: this,
      initialIndex: 0,
    );
    super.initState();
    currentTheme.addListener(() => setState(() {}));
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StyledToast(
      locale: const Locale('en', 'US'),
      animDuration: const Duration(milliseconds: 120),
      toastPositions: StyledToastPosition.top,
      reverseAnimation: StyledToastAnimation.slideFromTop,
      toastAnimation: StyledToastAnimation.slideToTop,
      backgroundColor: const Color(0xFF1A4859),
      child: MaterialApp(
        theme: CurrentTheme.lightTheme,
        darkTheme: CurrentTheme.darkTheme,
        themeMode: currentTheme.currentTheme,
        routes: {
          '/home': (context) => const HomeView(),
          '/signup': (context) => const SignUpView(),
          '/login': (context) => LoginView(),
          '/bookcatalog': (context) => const BookCatalogView(),
          '/contact': (context) => const ContactView(),
        },
        title: 'HMU Library Website',
        home: SafeArea(
          child: DefaultTabController(
            length: _tabs.length,
            child: Scaffold(
              appBar: TabBar(
                controller: _tabController,
                tabs: _tabs,
              ),
              body: TabBarView(
                controller: _tabController,
                children: [
                  const HomeView(),
                  const SignUpView(),
                  LoginView(),
                  const BookCatalogView(),
                  const ContactView(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
