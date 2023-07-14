import 'dart:convert';

import 'package:campuslib/models/department_model.dart';
import 'package:campuslib/utils/apis.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<Department?> fetchDepartments() async {
    var response = await client.get(Uri.parse(CustomAPI.allDepartments));
    if (response.statusCode == 200) {
      final jsonString = response.body;
      final decodeData = jsonDecode(jsonString);
      return Department.fromJson(decodeData);
    } else {
      return null;
    }
  }
}
