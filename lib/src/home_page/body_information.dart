import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/home_page/information_column/information_column.dart';

class BodyInformation extends StatefulWidget {
  const BodyInformation({Key? key}) : super(key: key);

  @override
  BodyInformationState createState() => BodyInformationState();
}

class BodyInformationState extends State<BodyInformation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          InformationColumn(
            columnTitle: 'News',
          ),
          InformationColumn(
            columnTitle: 'Announcments',
          ),
          InformationColumn(
            columnTitle: 'Events',
          ),
        ],
      ),
    );
  }
}
