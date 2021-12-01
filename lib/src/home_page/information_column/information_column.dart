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
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          InformationColumnTitle(string: widget.columnTitle),
          const Spacer(),
          InformationColumnEntry(
              entryTitle: 'Some really long line', entryDate: DateTime.now()),
          InformationColumnEntry(
              entryTitle: 'Some really long line', entryDate: DateTime.now()),
          InformationColumnEntry(
              entryTitle: 'Some really long line', entryDate: DateTime.now()),
          const Spacer(),
          InformationColumnFooter(
            columnName: widget.columnTitle.toLowerCase(),
            onPressed: () {},
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
