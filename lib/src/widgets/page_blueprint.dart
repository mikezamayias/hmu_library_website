import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'footer.dart';
import 'navigation_bar.dart';

class PageBlueprint extends StatefulWidget {
  final BoxDecoration? decoration;
  final Widget? child;

  const PageBlueprint({
    Key? key,
    this.decoration,
    this.child,
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
              if (widget.child != null)
                SliverToBoxAdapter(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: widget.decoration ?? const BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.all(90),
                      child: widget.child!
                    ),
                  ),
                ),
              SliverFillRemaining(
                hasScrollBody: false,
                fillOverscroll: false,
                child: Container(),
              ),
              const SliverToBoxAdapter(
                child: Footer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
