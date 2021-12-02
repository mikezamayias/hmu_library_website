import 'package:flutter/material.dart';

import 'information_column_entry.dart';
import 'information_column_footer.dart';
import 'information_column_title.dart';

class InformationColumn extends StatefulWidget {
  final String columnTitle;

  const InformationColumn({
    Key? key,
    required this.columnTitle,
  }) : super(key: key);

  @override
  _InformationColumnState createState() => _InformationColumnState();
}

class _InformationColumnState extends State<InformationColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.white.withOpacity(0.9),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InformationColumnTitle(string: widget.columnTitle),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InformationColumnEntry(
                entryTitle: 'Some really long line',
                entryDate: DateTime.now(),
              ),
              InformationColumnEntry(
                entryTitle: 'Some really long line',
                entryDate: DateTime.now(),
              ),
              InformationColumnEntry(
                entryTitle: 'Some really long line',
                entryDate: DateTime.now(),
              ),
            ],
          ),
          InformationColumnFooter(
            columnName: widget.columnTitle.toLowerCase(),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
