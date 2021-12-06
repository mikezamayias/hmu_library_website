import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/custom_tooltip.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../models/books.dart';
import '../../widgets/book_card.dart';
import '../../widgets/page_blueprint.dart';

class BookCatalogPage extends StatefulWidget {
  const BookCatalogPage({Key? key}) : super(key: key);

  @override
  State<BookCatalogPage> createState() => _BookCatalogPageState();
}

class _BookCatalogPageState extends State<BookCatalogPage> {
  final TextEditingController _termController = TextEditingController();
  String url =
      'https://books.googleapis.com/books/v1/volumes?q=&subject=Computers&langRestrict=en&orderBy=relevance&alt=json';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageBlueprint(
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextFormField(
            width: MediaQuery.of(context).size.width * 0.9,
            controller: _termController,
            labelText: 'Search Term',
            hintText:
                'Try different keywords! For example type "Python", then "C", then "Dart", etc.',
            onChanged: (value) => setState(
              () {
                url =
                    'https://books.googleapis.com/books/v1/volumes?q="$value"&subject=Computers&langRestrict=en&orderBy=relevance&alt=json';
                getBooks(url);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(45),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTooltip(
                  message: 'Opens Google Play Books API Documentation',
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: CustomElevatedButton(
                      label: 'API',
                      onPressed: () async {
                        String _googleApiLink =
                            'https://developers.google.com/books/docs/v1/getting_started';
                        if (!await launch(_googleApiLink)) {
                          throw 'Could not launch _googleApiLink';
                        }
                      },
                    ),
                  ),
                ),
                CustomTooltip(
                  message: 'Calls Google\'s Play Books API',
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      url,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xFF1A4859),
                        fontFamily: GoogleFonts.firaCode().fontFamily,
                      ),
                    ),
                  ),
                ),
              ],
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
