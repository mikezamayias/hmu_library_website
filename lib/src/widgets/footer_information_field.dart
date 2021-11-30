import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class FooterInformationField extends StatefulWidget {
  final String title;
  final List<String> value;

  const FooterInformationField({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  _FooterInformationFieldState createState() => _FooterInformationFieldState();
}

class _FooterInformationFieldState extends State<FooterInformationField> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(60)),
        depth: 6,
        color: const Color(0xFFA9915D),
        lightSource: LightSource.top,
        shadowDarkColor: const Color(0xFF1A4859),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 42),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.value
                  .map(
                    (value) => SelectableText(
                      value,
                      scrollPhysics: const NeverScrollableScrollPhysics(),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
