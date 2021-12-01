import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/home_page/body_information.dart';
import 'package:hmu_library_website/src/widgets/navigation_bar_text_button.dart';

import 'greetings_section.dart';
import '../widgets/footer.dart';
import '../widgets/navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color(0xFFEEE9DF),
              leading: const FittedBox(
                fit: BoxFit.scaleDown,
                child: Image(
                  image: AssetImage('assets/images/hmu_logo.png'),
                ),
              ),
              title: const Text(
                'HMU Library',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A4859),
                ),
              ),
              pinned: true,
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
            SliverToBoxAdapter(
              child: Column(
                children: const [
                  GreetingsSection(),
                  BodyInformation(),
                  Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
