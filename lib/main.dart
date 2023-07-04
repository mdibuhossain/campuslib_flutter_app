// ignore_for_file: prefer_const_constructors

import 'package:campuslib_flutter/routes/home/home_page.dart';
import 'package:campuslib_flutter/routes/search/search_page.dart';
import 'package:campuslib_flutter/utils/routers.dart';
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
      initialRoute: MyRouters.searchRoute,
      routes: {
        MyRouters.homeRoute: (context) => MainHomePage(),
        MyRouters.searchRoute: (context) => SearchPage(),
      },
    );
  }
}
