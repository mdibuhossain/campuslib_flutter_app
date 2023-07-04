// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:campuslib_flutter/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class DepartmentPage extends StatelessWidget {
  const DepartmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Column(
        children: [
          Text("Login page"),
        ],
      ),
    );
  }
}
