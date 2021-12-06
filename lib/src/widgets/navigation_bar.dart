import 'package:flutter/material.dart';
import '../views/book_catalog_view/book_catalog_view.dart';
import '../views/contact_view/contact_view.dart';
import '../views/home_view/home_view.dart';
import '../views/login_view/login_view.dart';
import '../views/sign_up_view/sign_up_view.dart';

import 'custom_elevated_button.dart';

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
            child: CustomElevatedButton(
              label: 'Home',
              icon: Icons.home_rounded,
              onPressed: () => Navigator.pushReplacement(
                context,
                pageRouteBuilder(const HomePage()),
              ),
            ),
          ),
          CustomElevatedButton(
            label: 'Home',
            icon: Icons.home_rounded,
            onPressed: () => Navigator.pushReplacement(
              context,
              pageRouteBuilder(const HomePage()),
            ),
          ),
          CustomElevatedButton(
            label: 'Sign Up',
            icon: Icons.person_add_rounded,
            onPressed: () => Navigator.pushReplacement(
              context,
              pageRouteBuilder(const SignUpPage()),
            ),
          ),
          CustomElevatedButton(
            label: 'Login',
            icon: Icons.login_rounded,
            onPressed: () => Navigator.pushReplacement(
              context,
              pageRouteBuilder(const LoginPage()),
            ),
          ),
          CustomElevatedButton(
            label: 'Book Catalog',
            icon: Icons.library_books_rounded,
            onPressed: () => Navigator.pushReplacement(
              context,
              pageRouteBuilder(const BookCatalogPage()),
            ),
          ),
          CustomElevatedButton(
            label: 'Contact',
            icon: Icons.alternate_email_outlined,
            onPressed: () => Navigator.pushReplacement(
              context,
              pageRouteBuilder(const ContactPage()),
            ),
          ),
          Visibility(
            visible: false,
            child: CustomElevatedButton(
              label: 'Home',
              icon: Icons.home_rounded,
              onPressed: () => Navigator.pushReplacement(
                context,
                pageRouteBuilder(const HomePage()),
              ),
            ),
          ),
        ],
      ),
    );
  }

  PageRouteBuilder<dynamic> pageRouteBuilder(Widget _page) {
    int _duration = 180;
    return PageRouteBuilder(
      pageBuilder: (context, animation1, animation2) => _page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
      transitionDuration: Duration(milliseconds: _duration),
    );
  }
}
