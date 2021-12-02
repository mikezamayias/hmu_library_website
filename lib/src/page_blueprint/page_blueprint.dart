import 'package:flutter/material.dart';

class PageBlueprint extends StatefulWidget {
  final BoxDecoration decoration;
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
    return Container(
      decoration: widget.decoration,
      child: Padding(
        padding: const EdgeInsets.all(90),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: widget.children,
        ),
      ),
    );
  }
}