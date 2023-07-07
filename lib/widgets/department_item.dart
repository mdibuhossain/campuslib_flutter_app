import 'package:campuslib_flutter/widgets/big_text.dart';
import 'package:flutter/material.dart';

class DepartmentItem extends StatelessWidget {
  const DepartmentItem({Key? key}) : super(key: key);

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
              const Icon(
                Icons.book_outlined,
                size: 60,
              ),
              BigText(
                text: "Books",
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
