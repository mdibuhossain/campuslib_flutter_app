// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:campuslib_flutter/providers/total_provider.dart';
import 'package:campuslib_flutter/routes/department/department_page.dart';
import 'package:campuslib_flutter/routes/home/home_page.dart';
import 'package:campuslib_flutter/routes/profile/profile_page.dart';
import 'package:campuslib_flutter/routes/search/search_page.dart';
import 'package:campuslib_flutter/utils/routers.dart';
import 'package:campuslib_flutter/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TotalProvider()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  static const List<Widget> _navPages = <Widget>[
    // DepartmentPage(),
    MainHomePage(),
    SearchPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TotalProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRouters.departmentRoute: (context) => DepartmentPage(),
      },
      home: Scaffold(
        bottomNavigationBar: BottomNavBar(),
        body: _navPages.elementAt(provider.selectedNavIdx),
      ),
    );
  }
}
