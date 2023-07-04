// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:campuslib_flutter/routes/home/home_page.dart';
import 'package:campuslib_flutter/routes/profile/profile_page.dart';
import 'package:campuslib_flutter/routes/search/search_page.dart';
import 'package:campuslib_flutter/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;
  static const List<Widget> _navPages = <Widget>[
    MainHomePage(),
    SearchPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
            ),
          ),
          child: GNav(
            gap: 8,
            backgroundColor: AppColors.mainColor,
            color: AppColors.iconColor1,
            activeColor: AppColors.iconColor1,
            tabBackgroundColor: Colors.deepOrange.shade900,
            padding: EdgeInsets.all(8),
            duration: Duration(milliseconds: 300),
            onTabChange: (value) => setState(() {
              _selectedIndex = value;
            }),
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.search,
                text: "Search",
              ),
              GButton(
                icon: Icons.person,
                text: "Profile",
              ),
            ],
          ),
        ),
        body: _navPages.elementAt(_selectedIndex),
      ),
    );
  }
}
