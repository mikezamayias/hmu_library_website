import 'package:flutter/material.dart';

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
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.home_rounded),
            label: const Text('Home'),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.person_add_rounded),
            label: const Text('Sign Up'),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.login_rounded),
            label: const Text('Login'),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.library_books_rounded),
            label: const Text('Book Catalog'),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.alternate_email_rounded),
            label: const Text('Contact'),
          ),
        ],
      ),
    );
  }
}
