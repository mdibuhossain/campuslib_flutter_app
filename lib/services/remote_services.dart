import 'package:campuslib/models/department_model.dart';
import 'package:campuslib/utils/apis.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<Department?> fetchDepartments() async {
    // print(CustomAPI.url["allDepartments"]);
    // return List.empty();
    var response =
        await client.get(Uri.parse(CustomAPI.url["allDepartments"]!));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      Department result = Department.fromRawJson(jsonString);
      return result;
    } else {
      return null;
    }
  }
}
