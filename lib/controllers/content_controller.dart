import 'package:campuslib/models/department_model.dart';
import 'package:campuslib/services/remote_services.dart';
import 'package:get/get.dart';

class ContentController extends GetxController {
  Rx<Department> dept = Department().obs;
  RxBool isLoadingForDept = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchDepartments();
  }

  Future<Rx<Department>> fetchDepartments() async {
    isLoadingForDept.value = true;
    var tmp = await RemoteServices.fetchDepartments();
    dept.value = tmp!;
    isLoadingForDept.value = false;
    return dept;
  }
}
