import 'package:campuslib/utils/routers.dart';
import 'package:campuslib/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DepartmentItem extends StatelessWidget {
  final IconData icon;
  final String name;
  final dynamic data;
  const DepartmentItem(
      {Key? key, required this.icon, required this.name, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(6),
      elevation: 4.0,
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: () {
          Get.toNamed(MyRouters.contentRoute, arguments: {
            "data": data,
          });
        },
        splashColor: Colors.deepOrange,
        child: Ink(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 50,
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
