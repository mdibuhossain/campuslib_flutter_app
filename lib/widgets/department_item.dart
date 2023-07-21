import 'package:campuslib/utils/colors.dart';
import 'package:campuslib/utils/routers.dart';
import 'package:campuslib/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DepartmentItem extends StatelessWidget {
  final IconData icon;
  final String name;
  final dynamic data;
  final String category;
  final String subCategory;
  const DepartmentItem({
    Key? key,
    required this.icon,
    required this.name,
    required this.data,
    required this.category,
    required this.subCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSubCategoryAvailable = data?.any((e) => e?.categories == category);
    print(isSubCategoryAvailable);
    return Material(
      borderRadius: BorderRadius.circular(6),
      elevation: isSubCategoryAvailable ? 4.0 : 0.0,
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: (isSubCategoryAvailable)
            ? () {
                Get.toNamed(MyRouters.contentRoute, arguments: {
                  "data": data,
                  "category": category,
                  "title": name,
                  "subCategory": subCategory,
                });
              }
            : null,
        splashColor: Colors.black12,
        child: Ink(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 50,
                color:
                    isSubCategoryAvailable ? AppColors.mainColor : Colors.grey,
              ),
              BigText(
                text: name,
                fontWeight: FontWeight.bold,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
