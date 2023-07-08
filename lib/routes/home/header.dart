// ignore_for_file: prefer_const_constructors

import 'package:campuslib/routes/home/search_bar.dart';
import 'package:campuslib/utils/colors.dart';
import 'package:campuslib/utils/dimensions.dart';
import 'package:campuslib/widgets/big_text.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        Dimension.width20(context),
        Dimension.height50(context),
        Dimension.width20(context),
        Dimension.height15(context),
      ),
      height: Dimension.headerContainer(context),
      decoration: const BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(
            size: 22,
            text: "Welcome to",
            color: AppColors.lightColor,
          ),
          BigText(
            size: 30,
            text: "Campus Library",
            fontWeight: FontWeight.bold,
            color: AppColors.lightColor,
          ),
          SizedBox(
            height: 20,
          ),
          TopSearchBar(),
        ],
      ),
    );
  }
}
