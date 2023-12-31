// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:campuslib/utils/colors.dart';
import 'package:campuslib/utils/dimensions.dart';
import 'package:campuslib/utils/routers.dart';
import 'package:campuslib/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DepartmentBody extends StatefulWidget {
  const DepartmentBody({Key? key}) : super(key: key);

  @override
  State<DepartmentBody> createState() => _DepartmentBodyState();
}

class _DepartmentBodyState extends State<DepartmentBody> {
  late List<String> deptList = [
    "cse",
    "eee",
    "math",
    "sta",
    "nonacademic",
  ];
  late Map<String, String> deptFullName = {
    "cse": "Computer Science and Engineering",
    "eee": "Electrical and Electronic Engineering",
    "math": "Mathematics",
    "sta": "Statistics",
    "nonacademic": "Non Academic",
  };

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          BigText(
            text: "Departments",
            fontWeight: FontWeight.bold,
            size: 20,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView.builder(
                itemCount: deptList.length,
                padding: EdgeInsets.zero,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => _buildDepartmentItem(index),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDepartmentItem(int index) {
    return Container(
      height: Dimension.deptNameContainer(context),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${deptList[index]}.jpg"),
                ),
              ),
            ),
            Card(
              elevation: 0.0,
              margin: EdgeInsets.zero,
              color: Color.fromARGB(202, 25, 24, 24),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: InkWell(
                  onTap: () {
                    // Navigator.name(context, MyRouters.departmentRoute);
                    Get.toNamed(MyRouters.departmentRoute, arguments: {
                      "deptBanner": deptList[index],
                      "deptName": deptFullName[deptList[index]]!,
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Text(
                          deptFullName[deptList[index]]!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.lightColor,
                            fontWeight: FontWeight.w500,
                            // fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
