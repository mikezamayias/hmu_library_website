import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/home_page/information_column/information_column_entry.dart';
import 'package:hmu_library_website/src/home_page/information_column/information_column_footer.dart';
import 'package:hmu_library_website/src/home_page/information_column/information_column_title.dart';

class InformationColumn extends StatefulWidget {
  const InformationColumn({Key? key}) : super(key: key);

  @override
  _InformationColumnState createState() => _InformationColumnState();
}

class _InformationColumnState extends State<InformationColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
          const InformationColumnTitle(string: 'News'),
          const Spacer(),
          InformationColumnEntry(
              entryTitle: 'Some really long line', entryDate: DateTime.now()),
          InformationColumnEntry(
              entryTitle: 'Some really long line', entryDate: DateTime.now()),
          InformationColumnEntry(
              entryTitle: 'Some really long line', entryDate: DateTime.now()),
          const Spacer(),
          InformationColumnFooter(
            columnName: 'news',
            onPressed: () {},
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
