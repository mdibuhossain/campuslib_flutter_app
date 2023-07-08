// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:campuslib/providers/total_provider.dart';
import 'package:campuslib/utils/colors.dart';
import 'package:campuslib/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TotalProvider>(context);

    return Container(
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
        onTabChange: (value) {
          provider.toggleNavIndex(value);
          print(Dimension.screenHeight(context).toString() +
              " " +
              Dimension.screenWidth(context).toString());
        },
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
    );
  }
}
