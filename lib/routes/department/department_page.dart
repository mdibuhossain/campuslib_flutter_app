// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:campuslib_flutter/utils/dimensions.dart';
import 'package:campuslib_flutter/widgets/department_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DepartmentPage extends StatelessWidget {
  const DepartmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> props = Get.arguments;
    return Scaffold(
      body: Container(
        height: Dimension.screenHeight,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: double.maxFinite,
                height: Dimension.deptBannerContainer,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage("assets/images/${props['deptBanner']}.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 45,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white60,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    iconSize: MaterialStateProperty.resolveWith((states) => 20),
                    padding: MaterialStateProperty.resolveWith(
                        (states) => EdgeInsets.zero),
                    elevation:
                        MaterialStateProperty.resolveWith((states) => 0.0),
                    iconColor: MaterialStateColor.resolveWith(
                        (states) => Colors.grey.shade800),
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent),
                    shape: MaterialStateProperty.resolveWith(
                        (states) => CircleBorder()),
                  ),
                  child: Icon(Icons.arrow_back_ios_new),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: Dimension.deptBannerContainer - 20,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.fromLTRB(50, 80, 50, 10),
                  children: [
                    DepartmentItem(
                      icon: Icons.book_outlined,
                      name: "Books",
                    ),
                    DepartmentItem(
                      icon: Icons.question_mark_outlined,
                      name: "Questions",
                    ),
                    DepartmentItem(
                      icon: Icons.topic,
                      name: "Syllabus",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
