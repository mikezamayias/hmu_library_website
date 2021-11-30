import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/widgets/navigation_bar_text_button.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Spacer(),
          NavigationBarTextButton(
            string: 'Home',
            onPressed: () {},
          ),
          NavigationBarTextButton(
            string: 'Sign Up',
            onPressed: () {},
          ),
          NavigationBarTextButton(
            string: 'Login',
            onPressed: () {},
          ),
          NavigationBarTextButton(
            string: 'Book Catalog',
            onPressed: () {},
          ),
          NavigationBarTextButton(
            string: 'Contact',
            onPressed: () {},
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
