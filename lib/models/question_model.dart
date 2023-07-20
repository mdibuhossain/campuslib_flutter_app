class Question {
  Data? data;

  Question({this.data});

  Question.fromJson(Map<String, dynamic> json) {
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
  List<GetQuestions?>? getQuestions;

  Data({this.getQuestions});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['getQuestions'] != null) {
      getQuestions = <GetQuestions>[];
      json['getQuestions'].forEach((v) {
        getQuestions!.add(new GetQuestions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.getQuestions != null) {
      data['getQuestions'] = this.getQuestions!.map((v) => v?.toJson()).toList();
    }
    return data;
  }
}

class GetQuestions {
  String? sId;
  String? bookName;
  String? downloadLink;
  String? categories;
  String? subCategories;
  String? addedBy;
  bool? status;

  GetQuestions(
      {this.sId,
      this.bookName,
      this.downloadLink,
      this.categories,
      this.subCategories,
      this.addedBy,
      this.status});

  GetQuestions.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    bookName = json['book_name'];
    downloadLink = json['download_link'];
    categories = json['categories'];
    subCategories = json['sub_categories'];
    addedBy = json['added_by'];
    status = json['status'];
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
    return data;
  }
}
