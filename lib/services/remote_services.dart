import 'dart:convert';

import 'package:campuslib/models/book_model.dart';
import 'package:campuslib/models/department_model.dart';
import 'package:campuslib/models/question_model.dart';
import 'package:campuslib/models/syllabus_model.dart';
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

  static Future<Book?> fetchBooks() async {
    var response = await client.get(Uri.parse(CustomAPI.allBooks));
    if (response.statusCode == 200) {
      final jsonString = response.body;
      final decodedData = jsonDecode(jsonString);
      return Book.fromJson(decodedData);
    } else {
      return null;
    }
  }

  static Future<Question?> fetchQuestions() async {
    var response = await client.get(Uri.parse(CustomAPI.allQuestions));
    if (response.statusCode == 200) {
      final jsonString = response.body;
      final decodedData = jsonDecode(jsonString);
      return Question.fromJson(decodedData);
    } else {
      return null;
    }
  }

  static Future<Syllabus?> fetchSyllabuses() async {
    var response = await client.get(Uri.parse(CustomAPI.allSyllabus));
    if (response.statusCode == 200) {
      final jsonString = response.body;
      final decodedData = jsonDecode(jsonString);
      return Syllabus.fromJson(decodedData);
    } else {
      return null;
    }
  }
}
