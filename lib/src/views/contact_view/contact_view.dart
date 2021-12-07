import 'package:flutter/material.dart';

import '../../widgets/page_blueprint.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    List<bool> _isExpanded = [false, false, false];
    return PageBlueprint(
      child: Center(
        child: ExpansionPanelList(
          expandedHeaderPadding: EdgeInsets.all(9),
          elevation: 9,
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _isExpanded[index] = !isExpanded;
            });
          },
          children: <ExpansionPanel>[
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return const ListTile(
                  title: Text('Name'),
                );
              },
              body: const ListTile(
                title: Text('Name'),
              ),
              isExpanded: _isExpanded[0],
              canTapOnHeader: true,
            ),
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return const ListTile(
                  title: Text('Email'),
                );
              },
              body: const ListTile(
                title: Text('Email'),
              ),
              isExpanded: _isExpanded[1],
              canTapOnHeader: true,
            ),
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return const ListTile(
                  title: Text('Text'),
                );
              },
              body: const ListTile(
                title: Text('Text'),
              ),
              isExpanded: _isExpanded[2],
              canTapOnHeader: true,
            ),
          ],
        ),
      ),
    );
  }
}
