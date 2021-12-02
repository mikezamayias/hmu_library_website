import 'package:flutter/material.dart';

import 'footer.dart';
import 'navigation_bar.dart';

class PageBlueprint extends StatefulWidget {
  final BoxDecoration? decoration;
  final List<Widget> children;

  const PageBlueprint({
    Key? key,
    required this.decoration,
    required this.children,
  }) : super(key: key);

  @override
  _PageBlueprintState createState() => _PageBlueprintState();
}

class _PageBlueprintState extends State<PageBlueprint> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Scrollbar(
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(
                flexibleSpace: NavigationBar(),
                automaticallyImplyLeading: false,
                centerTitle: false,
                backgroundColor: Color(0xFFA9915D),
                shadowColor: Color(0xFF1A4859),
                elevation: 15,
                forceElevated: true,
                floating: true,
                toolbarHeight: 90,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      decoration: widget.decoration!,
                      child: Padding(
                        padding: const EdgeInsets.all(90),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: widget.children,
                        ),
                      ),
                    ),
                    const Footer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
