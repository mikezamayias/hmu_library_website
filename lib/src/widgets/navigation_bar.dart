import 'package:flutter/material.dart';


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
              onPressed: () {},
            ),
          ),
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
          Visibility(
            visible: false,
            child: NavigationBarTextButton(
              label: 'Contact',
              icon: Icons.alternate_email_outlined,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
