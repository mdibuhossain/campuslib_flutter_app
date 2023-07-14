import 'package:campuslib/models/department_model.dart';
import 'package:campuslib/services/remote_services.dart';
import 'package:get/get.dart';

class ContentController extends GetxController {
  // var dept = Department().obs;
  // List<String>? get deptList => dept.value.data?.getDepartments;
  Department dept = Department();
  RxBool isLoadingForDept = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchDepartments();
  }

  Future<Department> fetchDepartments() async {
    isLoadingForDept.value = true;
    var tmp = await RemoteServices.fetchDepartments();
    if (tmp != null) dept = tmp;
    isLoadingForDept.value = false;
    print(dept.data?.getDepartments);
    return dept;
  }
}
