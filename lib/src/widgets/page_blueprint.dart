import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'footer.dart';
import 'navigation_bar.dart';

class PageBlueprint extends StatefulWidget {
  final BoxDecoration? decoration;
  final List<Widget> children;

  const PageBlueprint({
    Key? key,
    this.decoration,
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
          child: Column(children: <Widget>[
            const NavigationBar(),
            DraggableScrollableSheet(builder: (context, scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  decoration: widget.decoration,
                  child: Column(
                    children: widget.children,
                  ),
                ),
              );
            }),
          ]),
        ),
      ),
    );
  }
}
