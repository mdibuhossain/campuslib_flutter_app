class CustomAPI {
  static const String allDepartments =
      "https://campuslib.up.railway.app/graphql?query=query%7B%0A%20%20getDepartments%0A%7D";
  static const String allSyllabus =
      "https://campuslib.up.railway.app/graphql?query=query{%0A%20%20getAllSyllabus%20{%0A%20%20%20%20_id%0A%20%20%20%20book_name%0A%20%20%20%20download_link%0A%20%20%20%20categories%0A%20%20%20%20sub_categories%0A%20%20%20%20added_by%0A%20%20%20%20status%0A%20%20}%0A}";
  static const String allQuestions =
      "https://campuslib.up.railway.app/graphql?query=query{%0A%20%20getQuestions%20{%0A%20%20%20%20_id%0A%20%20%20%20book_name%0A%20%20%20%20download_link%0A%20%20%20%20categories%0A%20%20%20%20sub_categories%0A%20%20%20%20added_by%0A%20%20%20%20status%0A%20%20}%0A}";
  static const String allBooks =
      "https://campuslib.up.railway.app/graphql?query=query{%0A%20%20getBooks%20{%0A%20%20%20%20_id%0A%20%20%20%20book_name%0A%20%20%20%20download_link%0A%20%20%20%20categories%0A%20%20%20%20sub_categories%0A%20%20%20%20added_by%0A%20%20%20%20status%0A%20%20%20%20author%0A%20%20%20%20edition%0A%20%20}%0A}";
}
