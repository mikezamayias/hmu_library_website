import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/books.dart';
import '../../widgets/book_card.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/view_blueprint.dart';

class BookCatalogView extends StatefulWidget {
  const BookCatalogView({Key? key}) : super(key: key);

  @override
  State<BookCatalogView> createState() => _BookCatalogViewState();
}

class _BookCatalogViewState extends State<BookCatalogView> {
  final TextEditingController _termController = TextEditingController();
  String url =
      'https://books.googleapis.com/books/v1/volumes?q=&subject=Computers&langRestrict=en&orderBy=relevance&alt=json';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewBlueprint(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextFormField(
            width: MediaQuery.of(context).size.width * 0.42,
            controller: _termController,
            labelText: 'Search Term',
            hintText:
                'Try different keywords! For example type "Python", then "C", then "Dart", etc.',
            isRequiredField: true,
            onChanged: (value) => setState(
              () {
                url =
                    'https://books.googleapis.com/books/v1/volumes?q="$value"&subject=Computers&langRestrict=en&orderBy=relevance&alt=json';
                getBooks(url);
              },
            ),
          ),
          ListTile(
            title: GestureDetector(
              onTap: () async {
                String _googleApiLink =
                    'https://developers.google.com/books/docs/v1/getting_started';
                if (!await launch(_googleApiLink)) {
                  throw 'Could not launch _googleApiLink';
                }
              },
              child: const Text(
                'API',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF1A4859),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            subtitle: Text(
              url,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: const Color(0xFF1A4859),
                fontWeight: FontWeight.w500,
                fontFamily: GoogleFonts.firaCode().fontFamily,
              ),
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            children: [
              for (final book in books.books.reversed)
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
        ],
      ),
    );
  }
}
