import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


import '../models/books.dart';

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
              if (books.books[widget.bookIndex].imageUrl != null)
                CachedNetworkImage(
                  imageUrl: books.books[widget.bookIndex].imageUrl!,
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => Icon(
                    Icons.error,
                    color: Colors.red.shade700,
                  ),
                  fit: BoxFit.cover,
                  width: 200,
                  height: 200,
                ),
              const Spacer(),
              Text(books.books[widget.bookIndex].title),
              if (books.books[widget.bookIndex].subtitle != null)
                Text(
                  books.books[widget.bookIndex].subtitle!,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ),
                if (books.books[widget.bookIndex].authors != null)
                  Text(
                    books.books[widget.bookIndex].authors!.join(', '),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
