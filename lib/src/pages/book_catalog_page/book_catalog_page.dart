import 'package:flutter/material.dart';
import 'package:hmu_library_website/src/widgets/book_card.dart';

import '../../widgets/page_blueprint.dart';

class BookCatalogPage extends StatefulWidget {
  const BookCatalogPage({Key? key}) : super(key: key);

  @override
  State<BookCatalogPage> createState() => _BookCatalogPageState();
}

class _BookCatalogPageState extends State<BookCatalogPage> {
  @override
  Widget build(BuildContext context) {
    return PageBlueprint(
      decoration: const BoxDecoration(color: Colors.transparent),
      child: GridView.count(
        shrinkWrap: true,
        mainAxisSpacing: 30,
        crossAxisSpacing: 30,
        crossAxisCount: 3,
        children: List.generate(
          18,
          (index) => BookCard(
            bookIndex: index,
          ),
        ),
      ),
    );
  }
}
