class Syllabus {
  Data? data;

  Syllabus({this.data});

  Syllabus.fromJson(Map<String, dynamic> json) {
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
  List<GetAllSyllabus?>? getAllSyllabus;

  Data({this.getAllSyllabus});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['getAllSyllabus'] != null) {
      getAllSyllabus = <GetAllSyllabus>[];
      json['getAllSyllabus'].forEach((v) {
        getAllSyllabus!.add(new GetAllSyllabus.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.getAllSyllabus != null) {
      data['getAllSyllabus'] =
          this.getAllSyllabus!.map((v) => v?.toJson()).toList();
    }
    return data;
  }
}

class GetAllSyllabus {
  String? sId;
  String? bookName;
  String? downloadLink;
  String? categories;
  String? subCategories;
  String? addedBy;
  bool? status;
  String? author;
  String? edition;

  GetAllSyllabus(
      {this.sId,
      this.bookName,
      this.downloadLink,
      this.categories,
      this.subCategories,
      this.addedBy,
      this.status});

  GetAllSyllabus.fromJson(Map<String, dynamic> json) {
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
