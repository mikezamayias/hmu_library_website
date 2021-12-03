import 'package:flutter/material.dart';

import '../../models/books.dart';
import '../../widgets/book_card.dart';
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
        crossAxisCount: 3,
        children: [
          SizedBox.expand(
            child: Text(
              url,
              softWrap: false,
            ),
          ),
          for (final book in books.books)
            if (book.categories != null &&
                book.categories!.contains('Computers'))
              if (book.authors != null &&
                  book.imageUrl != null &&
                  book.subtitle != null &&
                  book.description != null)
                BookCard(
                  title: book.title,
                  subtitle: book.subtitle,
                  authors: book.authors,
                  categories: book.categories,
                  imageUrl: book.imageUrl,
                  description: book.description,
                ),
        ],
      ),
    );
  }
}
