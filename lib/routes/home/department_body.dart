// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:campuslib_flutter/utils/colors.dart';
import 'package:campuslib_flutter/widgets/big_text.dart';
import 'package:flutter/material.dart';

class DepartmentBody extends StatefulWidget {
  const DepartmentBody({Key? key}) : super(key: key);

  @override
  State<DepartmentBody> createState() => _DepartmentBodyState();
}

class _DepartmentBodyState extends State<DepartmentBody> {
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
                // color: AppColors.iconColor1,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView.builder(
                itemCount: 10,
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
      height: 100,
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
                  image: AssetImage("assets/images/sta.jpg"),
                ),
                color: index.isOdd ? AppColors.paraColor : AppColors.mainColor,
              ),
            ),
            Card(
              elevation: 0.0,
              margin: EdgeInsets.zero,
              color: Color.fromARGB(188, 35, 35, 35),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: InkWell(
                  onTap: () => print("hello"),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Text(
                          "Applied Chemistry and Chemical Engineering Department",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.lightColor,
                            fontWeight: FontWeight.w500,
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
