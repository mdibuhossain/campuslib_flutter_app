// To parse this JSON data, do
//
//     final book = bookFromJson(jsonString);

import 'dart:convert';

Book bookFromJson(String str) => Book.fromJson(json.decode(str));

String bookToJson(Book data) => json.encode(data.toJson());

class Book {
  Data data;

  Book({
    required this.data,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  List<GetBook> getBooks;

  Data({
    required this.getBooks,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        getBooks: List<GetBook>.from(
            json["getBooks"].map((x) => GetBook.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "getBooks": List<dynamic>.from(getBooks.map((x) => x.toJson())),
      };
}

class GetBook {
  String id;
  String bookName;
  String downloadLink;
  Categories categories;
  SubCategories subCategories;
  AddedBy addedBy;
  bool status;
  String author;
  String? edition;

  GetBook({
    required this.id,
    required this.bookName,
    required this.downloadLink,
    required this.categories,
    required this.subCategories,
    required this.addedBy,
    required this.status,
    required this.author,
    this.edition,
  });

  factory GetBook.fromJson(Map<String, dynamic> json) => GetBook(
        id: json["_id"],
        bookName: json["book_name"],
        downloadLink: json["download_link"],
        categories: categoriesValues.map[json["categories"]]!,
        subCategories: subCategoriesValues.map[json["sub_categories"]]!,
        addedBy: addedByValues.map[json["added_by"]]!,
        status: json["status"],
        author: json["author"],
        edition: json["edition"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "book_name": bookName,
        "download_link": downloadLink,
        "categories": categoriesValues.reverse[categories],
        "sub_categories": subCategoriesValues.reverse[subCategories],
        "added_by": addedByValues.reverse[addedBy],
        "status": status,
        "author": author,
        "edition": edition,
      };
}

enum AddedBy {
  IBUHOSSAIN3_GMAIL_COM,
  MAHMUD_PONIR_9800_GMAIL_COM,
  ADMIN_ADMIN_COM,
  RABIAAKHTER44_GMAIL_COM
}

final addedByValues = EnumValues({
  "admin@admin.com": AddedBy.ADMIN_ADMIN_COM,
  "ibuhossain3@gmail.com": AddedBy.IBUHOSSAIN3_GMAIL_COM,
  "mahmud.ponir.9800@gmail.com": AddedBy.MAHMUD_PONIR_9800_GMAIL_COM,
  "rabiaakhter44@gmail.com": AddedBy.RABIAAKHTER44_GMAIL_COM
});

enum Categories { CSE, MATH, EEE, STA, NONACADEMIC, ISLAMIC, ACCE }

final categoriesValues = EnumValues({
  "ACCE": Categories.ACCE,
  "cse": Categories.CSE,
  "eee": Categories.EEE,
  "islamic": Categories.ISLAMIC,
  "math": Categories.MATH,
  "nonacademic": Categories.NONACADEMIC,
  "sta": Categories.STA
});

enum SubCategories { BOOK }

final subCategoriesValues = EnumValues({"book": SubCategories.BOOK});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
