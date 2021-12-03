import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCard extends StatefulWidget {
  final int bookIndex;

  const BookCard({
    Key? key,
    required this.bookIndex,
  }) : super(key: key);

  @override
  _BookCardState createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
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
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Book ${widget.bookIndex + 1}'),
              const Spacer(),
              CachedNetworkImage(
                imageUrl:
                    'http://books.google.com/books/content?id=VXknEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Color(0xFFA9915D),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color(0xFF1A4859),
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Icon(
                  Icons.error_outline_rounded,
                  size: 60,
                  color: Colors.red.shade700,
                ),
              ),
              const Spacer(),
              const Text('Sapiens'),
              const Text('A Brief History of Humankind'),
              const Text('Yuval Noah Harari'),
            ],
          ),
        ),
      ),
    );
  }
}
