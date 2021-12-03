/*
* Auto-generated dart code using app.quicktype.io
* REST query that generated this json response:
* https://books.googleapis.com/books/v1/volumes?q=%22Flutter%22&langRestrict=en&orderBy=relevance&alt=json&maxResults=18
* */

class QueryResults {
  QueryResults({
    required this.kind,
    required this.totalItems,
    required this.items,
  });

  String kind;
  int totalItems;
  List<Item> items;

  QueryResults copyWith({
    required String kind,
    required int totalItems,
    required List<Item> items,
  }) =>
      QueryResults(
        kind: kind,
        totalItems: totalItems,
        items: items,
      );
}

class Item {
  Item({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  });

  Kind kind;
  String id;
  String etag;
  String selfLink;
  VolumeInfo volumeInfo;
  SaleInfo saleInfo;
  AccessInfo accessInfo;
  SearchInfo searchInfo;

  Item copyWith({
    required Kind kind,
    required String id,
    required String etag,
    required String selfLink,
    required VolumeInfo volumeInfo,
    required SaleInfo saleInfo,
    required AccessInfo accessInfo,
    required SearchInfo searchInfo,
  }) =>
      Item(
        kind: kind,
        id: id,
        etag: etag,
        selfLink: selfLink,
        volumeInfo: volumeInfo,
        saleInfo: saleInfo,
        accessInfo: accessInfo,
        searchInfo: searchInfo,
      );
}

class AccessInfo {
  AccessInfo({
    required this.country,
    required this.viewability,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    required this.epub,
    required this.pdf,
    required this.webReaderLink,
    required this.accessViewStatus,
    required this.quoteSharingAllowed,
  });

  Country country;
  Viewability viewability;
  bool embeddable;
  bool publicDomain;
  TextToSpeechPermission textToSpeechPermission;
  Epub epub;
  Pdf pdf;
  String webReaderLink;
  AccessViewStatus accessViewStatus;
  bool quoteSharingAllowed;

  AccessInfo copyWith({
    required Country country,
    required Viewability viewability,
    required bool embeddable,
    required bool publicDomain,
    required TextToSpeechPermission textToSpeechPermission,
    required Epub epub,
    required Pdf pdf,
    required String webReaderLink,
    required AccessViewStatus accessViewStatus,
    required bool quoteSharingAllowed,
  }) =>
      AccessInfo(
        country: country,
        viewability: viewability,
        embeddable: embeddable,
        publicDomain: publicDomain,
        textToSpeechPermission: textToSpeechPermission,
        epub: epub,
        pdf: pdf,
        webReaderLink: webReaderLink,
        accessViewStatus: accessViewStatus,
        quoteSharingAllowed: quoteSharingAllowed,
      );
}

enum AccessViewStatus { sample, none, fullPublicDomain }

enum Country { gr }

class Epub {
  Epub({
    required this.isAvailable,
    required this.acsTokenLink,
    required this.downloadLink,
  });

  bool isAvailable;
  String acsTokenLink;
  String downloadLink;

  Epub copyWith({
    required bool isAvailable,
    required String acsTokenLink,
    required String downloadLink,
  }) =>
      Epub(
        isAvailable: isAvailable,
        acsTokenLink: acsTokenLink,
        downloadLink: downloadLink,
      );
}

class Pdf {
  Pdf({
    required this.isAvailable,
    required this.acsTokenLink,
  });

  bool isAvailable;
  String acsTokenLink;

  Pdf copyWith({
    required bool isAvailable,
    required String acsTokenLink,
  }) =>
      Pdf(
        isAvailable: isAvailable,
        acsTokenLink: acsTokenLink,
      );
}

enum TextToSpeechPermission {  allowed, allowedForAccessibility }

enum Viewability { partial, noPages, allPages }

enum Kind { booksVolume }

class SaleInfo {
  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
    required this.listPrice,
    required this.retailPrice,
    required this.buyLink,
    required this.offers,
  });

  Country country;
  Saleability saleability;
  bool isEbook;
  SaleInfoListPrice listPrice;
  SaleInfoListPrice retailPrice;
  String buyLink;
  List<Offer> offers;

  SaleInfo copyWith({
    required Country country,
    required Saleability saleability,
    required bool isEbook,
    required SaleInfoListPrice listPrice,
    required SaleInfoListPrice retailPrice,
    required String buyLink,
    required List<Offer> offers,
  }) =>
      SaleInfo(
        country: country,
        saleability: saleability,
        isEbook: isEbook,
        listPrice: listPrice,
        retailPrice: retailPrice,
        buyLink: buyLink,
        offers: offers,
      );
}

class SaleInfoListPrice {
  SaleInfoListPrice({
    required this.amount,
    required this.currencyCode,
  });

  double amount;
  CurrencyCode currencyCode;

  SaleInfoListPrice copyWith({
    required double amount,
    required CurrencyCode currencyCode,
  }) =>
      SaleInfoListPrice(
        amount: amount,
        currencyCode: currencyCode,
      );
}

enum CurrencyCode { eur }

class Offer {
  Offer({
    required this.finskyOfferType,
    required this.listPrice,
    required this.retailPrice,
  });

  int finskyOfferType;
  OfferListPrice listPrice;
  OfferListPrice retailPrice;

  Offer copyWith({
    required int finskyOfferType,
    required OfferListPrice listPrice,
    required OfferListPrice retailPrice,
  }) =>
      Offer(
        finskyOfferType: finskyOfferType,
        listPrice: listPrice,
        retailPrice: retailPrice,
      );
}

class OfferListPrice {
  OfferListPrice({
    required this.amountInMicros,
    required this.currencyCode,
  });

  int amountInMicros;
  CurrencyCode currencyCode;

  OfferListPrice copyWith({
    required int amountInMicros,
    required CurrencyCode currencyCode,
  }) =>
      OfferListPrice(
        amountInMicros: amountInMicros,
        currencyCode: currencyCode,
      );
}

enum Saleability { notForSale, forSale, free }

class SearchInfo {
  SearchInfo({
    required this.textSnippet,
  });

  String textSnippet;

  SearchInfo copyWith({
    required String textSnippet,
  }) =>
      SearchInfo(
        textSnippet: textSnippet,
      );
}

class VolumeInfo {
  VolumeInfo({
    required this.title,
    required this.subtitle,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
    required this.averageRating,
    required this.ratingsCount,
  });

  String title;
  String subtitle;
  List<String> authors;
  String publisher;
  String publishedDate;
  String description;
  List<IndustryIdentifier> industryIdentifiers;
  ReadingModes readingModes;
  int pageCount;
  PrintType printType;
  List<Category> categories;
  MaturityRating maturityRating;
  bool allowAnonLogging;
  String contentVersion;
  PanelizationSummary panelizationSummary;
  ImageLinks imageLinks;
  Language language;
  String previewLink;
  String infoLink;
  String canonicalVolumeLink;
  int averageRating;
  int ratingsCount;

  VolumeInfo copyWith({
    required String title,
    required String subtitle,
    required List<String> authors,
    required String publisher,
    required String publishedDate,
    required String description,
    required List<IndustryIdentifier> industryIdentifiers,
    required ReadingModes readingModes,
    required int pageCount,
    required PrintType printType,
    required List<Category> categories,
    required MaturityRating maturityRating,
    required bool allowAnonLogging,
    required String contentVersion,
    required PanelizationSummary panelizationSummary,
    required ImageLinks imageLinks,
    required Language language,
    required String previewLink,
    required String infoLink,
    required String canonicalVolumeLink,
    required int averageRating,
    required int ratingsCount,
  }) =>
      VolumeInfo(
        title: title,
        subtitle: subtitle,
        authors: authors,
        publisher: publisher,
        publishedDate: publishedDate,
        description: description,
        industryIdentifiers: industryIdentifiers,
        readingModes: readingModes,
        pageCount: pageCount,
        printType: printType,
        categories: categories,
        maturityRating: maturityRating,
        allowAnonLogging: allowAnonLogging,
        contentVersion: contentVersion,
        panelizationSummary: panelizationSummary,
        imageLinks: imageLinks,
        language: language,
        previewLink: previewLink,
        infoLink: infoLink,
        canonicalVolumeLink: canonicalVolumeLink,
        averageRating: averageRating,
        ratingsCount: ratingsCount,
      );
}

enum Category { computers, flutterAerodynamics, boundaryLayer }

class ImageLinks {
  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  String smallThumbnail;
  String thumbnail;

  ImageLinks copyWith({
    required String smallThumbnail,
    required String thumbnail,
  }) =>
      ImageLinks(
        smallThumbnail: smallThumbnail,
        thumbnail: thumbnail,
      );
}

class IndustryIdentifier {
  IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

  Type type;
  String identifier;

  IndustryIdentifier copyWith({
    required Type type,
    required String identifier,
  }) =>
      IndustryIdentifier(
        type: type,
        identifier: identifier,
      );
}

enum Type { isbn13, isbn10, other }

enum Language { en }

enum MaturityRating { notMature }

class PanelizationSummary {
  PanelizationSummary({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });

  bool containsEpubBubbles;
  bool containsImageBubbles;

  PanelizationSummary copyWith({
    required bool containsEpubBubbles,
    required bool containsImageBubbles,
  }) =>
      PanelizationSummary(
        containsEpubBubbles: containsEpubBubbles,
        containsImageBubbles: containsImageBubbles,
      );
}

enum PrintType { book }

class ReadingModes {
  ReadingModes({
    required this.text,
    required this.image,
  });

  bool text;
  bool image;

  ReadingModes copyWith({
    required bool text,
    required bool image,
  }) =>
      ReadingModes(
        text: text,
        image: image,
      );
}
