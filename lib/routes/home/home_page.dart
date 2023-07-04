// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:campuslib_flutter/routes/home/department_body.dart';
import 'package:campuslib_flutter/routes/home/header.dart';
import 'package:campuslib_flutter/utils/colors.dart';
import 'package:campuslib_flutter/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header start ------------------->
        Header(),
        DepartmentBody(),
        // Header end <-------------------
      ],
    );
  }
}
