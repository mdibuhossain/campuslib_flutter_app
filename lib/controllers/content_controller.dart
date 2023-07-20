import 'package:campuslib/models/book_model.dart';
import 'package:campuslib/models/department_model.dart';
import 'package:campuslib/models/question_model.dart';
import 'package:campuslib/models/syllabus_model.dart';
import 'package:campuslib/services/remote_services.dart';
import 'package:get/get.dart';

class ContentController extends GetxController {
  Rx<Department> dept = Department().obs;
  RxBool isLoadingForDept = true.obs;
  get deptList => dept.value.data?.getDepartments;

  Rx<Book> book = Book().obs;
  RxBool isLoadingForBook = true.obs;
  get bookList => book.value.data?.getBooks;

  Rx<Question> question = Question().obs;
  RxBool isLoadingForQuestion = true.obs;
  get questionList => question.value.data?.getQuestions;

  Rx<Syllabus> syllabus = Syllabus().obs;
  RxBool isLoadingForSyllabus = true.obs;
  get syllabusList => syllabus.value.data?.getAllSyllabus;

  @override
  void onInit() {
    super.onInit();
    fetchDepartments();
    fetchBooks();
    fetchQuestions();
    fetchSyllabuses();
  }

  void fetchDepartments() async {
    isLoadingForDept.value = true;
    var tmp = await RemoteServices.fetchDepartments();
    dept.value = tmp!;
    isLoadingForDept.value = false;
  }

  void fetchBooks() async {
    isLoadingForBook.value = true;
    var tmp = await RemoteServices.fetchBooks();
    book.value = tmp!;
    isLoadingForBook.value = false;
  }

  void fetchQuestions() async {
    isLoadingForQuestion.value = true;
    var tmp = await RemoteServices.fetchQuestions();
    question.value = tmp!;
    isLoadingForQuestion.value = false;
  }

  void fetchSyllabuses() async {
    isLoadingForSyllabus.value = true;
    var tmp = await RemoteServices.fetchSyllabuses();
    syllabus.value = tmp!;
    isLoadingForSyllabus.value = false;
  }
}
