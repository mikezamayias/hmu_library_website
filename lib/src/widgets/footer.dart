import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  final PageController pageController = PageController(viewportFraction: 0.8);

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      int nextPage = pageController.page!.round();
      if (nextPage != pageController.page) {
        setState(() {
          pageController.jumpToPage(nextPage);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      color: const Color(0xFFEEE9DF),
      child: PageView(
        controller: pageController,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            child: const Text('Address'),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            child: const Text('Email'),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            child: const Text('Telephone'),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            child: const Text('Working Hours'),
          ),
        ],
      ),
    );
  }
}
