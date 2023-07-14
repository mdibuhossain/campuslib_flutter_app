class Department {
  Data? data;

  Department({this.data});

  Department.fromJson(Map<String, dynamic> json) {
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
  List<String>? getDepartments;

  Data({this.getDepartments});

  Data.fromJson(Map<String, dynamic> json) {
    getDepartments = json['getDepartments'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['getDepartments'] = this.getDepartments;
    return data;
  }
}
