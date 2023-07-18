import 'package:campuslib/models/book_model.dart';
import 'package:campuslib/models/department_model.dart';
import 'package:campuslib/services/remote_services.dart';
import 'package:get/get.dart';

class ContentController extends GetxController {
  Rx<Department> dept = Department().obs;
  RxBool isLoadingForDept = true.obs;
  get deptList => dept.value.data?.getDepartments;

  Rx<Book> book = Book().obs;
  RxBool isLoadingForBook = true.obs;
  get bookList => book.value.data?.getBooks;

  @override
  void onInit() {
    super.onInit();
    fetchDepartments();
    fetchBooks();
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
}
