import 'package:campuslib_flutter/widgets/big_text.dart';
import 'package:flutter/material.dart';

class DepartmentItem extends StatelessWidget {
  final IconData icon;
  final String name;
  const DepartmentItem({Key? key, required this.icon, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(6),
      elevation: 4.0,
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: () {},
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
