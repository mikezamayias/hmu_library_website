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

  final String kind;
  final int totalItems;
  final List<Item> items;

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

  final Kind kind;
  final String id;
  final String etag;
  final String selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo saleInfo;
  final AccessInfo accessInfo;
  final SearchInfo searchInfo;

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

  final Country country;
  final Viewability viewability;
  final bool embeddable;
  final bool publicDomain;
  final TextToSpeechPermission textToSpeechPermission;
  final Epub epub;
  final Pdf pdf;
  final String webReaderLink;
  final AccessViewStatus accessViewStatus;
  final bool quoteSharingAllowed;

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
        textToSpeechPermission:
            textToSpeechPermission,
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

  final bool isAvailable;
  final String acsTokenLink;
  final String downloadLink;

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

  final bool isAvailable;
  final String acsTokenLink;

  Pdf copyWith({
    required bool isAvailable,
    required String acsTokenLink,
  }) =>
      Pdf(
        isAvailable: isAvailable,
        acsTokenLink: acsTokenLink,
      );
}

enum TextToSpeechPermission { allowed, allowedForAccesssibility }

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

  final Country country;
  final Saleability saleability;
  final bool isEbook;
  final SaleInfoListPrice listPrice;
  final SaleInfoListPrice retailPrice;
  final String buyLink;
  final List<Offer> offers;

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

  final double amount;
  final CurrencyCode currencyCode;

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

  final int finskyOfferType;
  final OfferListPrice listPrice;
  final OfferListPrice retailPrice;

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

  final int amountInMicros;
  final CurrencyCode currencyCode;

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

  final String textSnippet;

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

  final String title;
  final String subtitle;
  final List<String> authors;
  final String publisher;
  final String publishedDate;
  final String description;
  final List<IndustryIdentifier> industryIdentifiers;
  final ReadingModes readingModes;
  final int pageCount;
  final PrintType printType;
  final List<Category> categories;
  final MaturityRating maturityRating;
  final bool allowAnonLogging;
  final String contentVersion;
  final PanelizationSummary panelizationSummary;
  final ImageLinks imageLinks;
  final Language language;
  final String previewLink;
  final String infoLink;
  final String canonicalVolumeLink;
  final int averageRating;
  final int ratingsCount;

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

enum Category {
  computers,
  flutterAerodynamics,
  youngAdultNonfiction,
  boundaryLayer
}

class ImageLinks {
  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  final String smallThumbnail;
  final String thumbnail;

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

  final Type type;
  final String identifier;

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

  final bool containsEpubBubbles;
  final bool containsImageBubbles;

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

  final bool text;
  final bool image;

  ReadingModes copyWith({
    required bool text,
    required bool image,
  }) =>
      ReadingModes(
        text: text,
        image: image,
      );
}
