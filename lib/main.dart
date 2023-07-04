// ignore_for_file: prefer_const_constructors

import 'package:campuslib_flutter/routes/home/home_page.dart';
import 'package:campuslib_flutter/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavBar(),
        body: MainHomePage(),
      ),
    );
  }
}
