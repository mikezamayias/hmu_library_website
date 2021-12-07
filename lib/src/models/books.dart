import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Books books = Books(books: []);

Future<Books?> getBooks(String url) async {
  final response = await http.get(
    Uri.parse(Uri.encodeFull(url)),
  );

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(response.body);
    final items = jsonResponse['items'];
    if (items == null) {
      return null;
    }
    for (var item in items) {
      final volumeInfo = item['volumeInfo'];
      final title = volumeInfo['title'];
      final subtitle = volumeInfo['subtitle'];
      final description = volumeInfo['description'];
      final authors = volumeInfo['authors'];
      final categories = volumeInfo['categories'];
      final imageLinks = volumeInfo['imageLinks'];
      final thumbnail = imageLinks['thumbnail'];
      books.books.add(Book(
        title: title,
        subtitle: subtitle,
        description: description,
        authors: authors,
        categories: categories,
        imageUrl: thumbnail,
      ));
    }
  } else {
    debugPrint('Request failed with status: ${response.statusCode}.');
  }
}

class Book {
  final String title;
  final String? subtitle;
  final String? description;
  final List? authors;
  final String? imageUrl;
  final List? categories;

  Book({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.authors,
    required this.imageUrl,
    required this.categories,
  });

  @override
  String toString() {
    return 'Book{title: $title, subtitle: $subtitle, description: $description, authors: $authors, imageUrl: $imageUrl, categories: $categories}';
  }
}

class Books {
  final List<Book> books;

  Books({
    required this.books,
  });
}
