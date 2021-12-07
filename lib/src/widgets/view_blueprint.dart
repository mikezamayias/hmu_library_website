import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hmu_library_website/src/widgets/footer.dart';

class ViewBlueprint extends StatefulWidget {
  final BoxDecoration? decoration;
  final Widget? child;

  const ViewBlueprint({
    Key? key,
    this.decoration,
    this.child,
  }) : super(key: key);

  @override
  _ViewBlueprintState createState() => _ViewBlueprintState();
}

class _ViewBlueprintState extends State<ViewBlueprint> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: widget.decoration,
              child: Padding(
                padding: const EdgeInsets.all(60),
                child: widget.child,
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
