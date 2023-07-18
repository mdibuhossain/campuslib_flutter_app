class Book {
  Data? data;

  Book({this.data});

  Book.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<GetBooks?>? getBooks;

  Data({this.getBooks});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['getBooks'] != null) {
      getBooks = <GetBooks>[];
      json['getBooks'].forEach((v) {
        getBooks!.add(new GetBooks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.getBooks != null) {
      data['getBooks'] = this.getBooks!.map((v) => v?.toJson()).toList();
    }
    return data;
  }
}

class GetBooks {
  String? sId;
  String? bookName;
  String? downloadLink;
  String? categories;
  String? subCategories;
  String? addedBy;
  bool? status;
  String? author;
  String? edition;

  GetBooks(
      {this.sId,
      this.bookName,
      this.downloadLink,
      this.categories,
      this.subCategories,
      this.addedBy,
      this.status,
      this.author,
      this.edition});

  GetBooks.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    bookName = json['book_name'];
    downloadLink = json['download_link'];
    categories = json['categories'];
    subCategories = json['sub_categories'];
    addedBy = json['added_by'];
    status = json['status'];
    author = json['author'];
    edition = json['edition'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['book_name'] = this.bookName;
    data['download_link'] = this.downloadLink;
    data['categories'] = this.categories;
    data['sub_categories'] = this.subCategories;
    data['added_by'] = this.addedBy;
    data['status'] = this.status;
    data['author'] = this.author;
    data['edition'] = this.edition;
    return data;
  }
}
