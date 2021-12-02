import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/pages/book_catalog_page/book_catalog_page.dart';
import 'package:hmu_library_website/src/pages/contact_page/contact_page.dart';
import 'package:hmu_library_website/src/pages/home_page/home_page.dart';
import 'package:hmu_library_website/src/pages/login_page/login_page.dart';
import 'package:hmu_library_website/src/pages/sign_up_page/sign_up_page.dart';

import 'navigation_bar_text_button.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.21,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Visibility(
            visible: false,
            child: NavigationBarTextButton(
              label: 'Home',
              icon: Icons.home_rounded,
              onPressed: () => Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      const HomePage(),
                  transitionDuration: Duration.zero,
                ),
              ),
            ),
          ),
          NavigationBarTextButton(
            label: 'Home',
            icon: Icons.home_rounded,
            onPressed: () => Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) =>
                    const HomePage(),
                transitionDuration: Duration.zero,
              ),
            ),
          ),
          NavigationBarTextButton(
            label: 'Sign Up',
            icon: Icons.person_add_rounded,
            onPressed: () => Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) =>
                    const SignUpPage(),
                transitionDuration: Duration.zero,
              ),
            ),
          ),
          NavigationBarTextButton(
            label: 'Login',
            icon: Icons.login_rounded,
            onPressed: () => Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) =>
                    const LoginPage(),
                transitionDuration: Duration.zero,
              ),
            ),
          ),
          NavigationBarTextButton(
            label: 'Book Catalog',
            icon: Icons.library_books_rounded,
            onPressed: () => Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) =>
                    const BookCatalogPage(),
                transitionDuration: Duration.zero,
              ),
            ),
          ),
          NavigationBarTextButton(
            label: 'Contact',
            icon: Icons.alternate_email_outlined,
            onPressed: () => Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) =>
                    const ContactPage(),
                transitionDuration: Duration.zero,
              ),
            ),
          ),
          Visibility(
            visible: false,
            child: NavigationBarTextButton(
              label: 'Home',
              icon: Icons.home_rounded,
              onPressed: () => Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      const HomePage(),
                  transitionDuration: Duration.zero,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
