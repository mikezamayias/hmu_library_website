import 'package:flutter/material.dart';

class InformationColumnEntry extends StatefulWidget {
  final String entryTitle;
  final DateTime entryDate;

  const InformationColumnEntry({
    Key? key,
    required this.entryTitle,
    required this.entryDate,
  }) : super(key: key);

  @override
  _InformationColumnEntryState createState() => _InformationColumnEntryState();
}

class _InformationColumnEntryState extends State<InformationColumnEntry> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.entryTitle,
            style: const TextStyle(
              color: Color(0xFF333333),
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Text(
            '${widget.entryDate.year}-${widget.entryDate.month.toString().padLeft(2, '0')}-${widget.entryDate.day.toString().padLeft(2, '0')}',
            style: const TextStyle(
              color: Color(0xFF00AC69),
              fontWeight: FontWeight.w500,
              fontSize: 21,
            ),
          ),
        ],
      ),
    );
  }
}
