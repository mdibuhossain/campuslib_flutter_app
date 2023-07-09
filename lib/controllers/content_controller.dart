import 'package:campuslib/models/department_model.dart';
import 'package:campuslib/services/remote_services.dart';
import 'package:get/get.dart';

class ContentController extends GetxController {
  Department deptList = Department(data: );

  @override
  void onInit() {
    fetchDepartments();
    super.onInit();
  }

  void fetchDepartments() async {
    var depts = await RemoteServices.fetchDepartments() as List<Department>;
    deptList.value = depts;
  }
}
