import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BookCard extends StatefulWidget {
  final String? title;
  final String? subtitle;
  final String? imageUrl;
  final List? authors;
  final List? categories;
  final String? description;

  const BookCard({
    Key? key,
    this.title,
    this.subtitle,
    this.imageUrl,
    this.authors,
    this.categories,
    this.description,
  }) : super(key: key);

  @override
  _BookCardState createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
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
              const Spacer(),
              Text(
                widget.title!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                widget.subtitle!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              CachedNetworkImage(
                imageUrl: widget.imageUrl!,
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
              Text(
                widget.authors!.join(', '),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
