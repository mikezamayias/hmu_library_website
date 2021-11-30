import 'dart:convert';

class Greeting {
  String title;
  String text;
  Greeting({
    required this.title,
    required this.text,
  });

  Greeting copyWith({
    String? title,
    String? text,
  }) {
    return Greeting(
      title: title ?? this.title,
      text: text ?? this.text,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'text': text,
    };
  }

  factory Greeting.fromMap(Map<String, dynamic> map) {
    return Greeting(
      title: map['title'],
      text: map['text'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Greeting.fromJson(String source) =>
      Greeting.fromMap(json.decode(source));

  @override
  String toString() => 'Greeting(title: $title, text: $text)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Greeting && other.title == title && other.text == text;
  }

  @override
  int get hashCode => title.hashCode ^ text.hashCode;
}

Greeting greeting = Greeting(
  title: 'Welcome to the HMU Library website',
  text: '''
The TEI of Crete has a Main Library, which is aiming at supporting the educational and research activities of the Institute with regard to the relevant undergraduate and postgraduate study programmes at the Departments of the TEI.

The library is fully automated and hosts a large book and digital collection, organized according to international library classification standards.

Further information about the use of the library can be found on its website, where you may use the available information services and also navigate freely its collections.

It is a lending library and a member-card is required.''',
);
