// To parse this JSON data, do
//
//     final department = departmentFromJson(jsonString);

import 'dart:convert';

class Department {
  Data data;

  Department({
    required this.data,
  });

  factory Department.fromRawJson(String str) =>
      Department.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Department.fromJson(Map<String, dynamic> json) => Department(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  List<String> getDepartments;

  Data({
    required this.getDepartments,
  });

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        getDepartments: List<String>.from(json["getDepartments"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "getDepartments": List<dynamic>.from(getDepartments.map((x) => x)),
      };
}
