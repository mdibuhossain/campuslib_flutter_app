import 'package:flutter/material.dart';

class Dimension {
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double headerContainer(BuildContext context) {
    return screenHeight(context) / 3.52;
  }

  static double deptNameContainer(BuildContext context) {
    return screenHeight(context) / 8.20;
  }

  static double deptBannerContainer(BuildContext context) {
    return screenHeight(context) / 2.40;
  }

  static double height10(BuildContext context) {
    return screenHeight(context) / 75.6;
  }

  static double height15(BuildContext context) {
    return screenHeight(context) / 50.4;
  }

  static double height20(BuildContext context) {
    return screenHeight(context) / 37.6;
  }

  static double height25(BuildContext context) {
    return screenHeight(context) / 30.24;
  }

  static double height30(BuildContext context) {
    return screenHeight(context) / 25.2;
  }

  static double height35(BuildContext context) {
    return screenHeight(context) / 21.6;
  }

  static double height40(BuildContext context) {
    return screenHeight(context) / 18.9;
  }

  static double height45(BuildContext context) {
    return screenHeight(context) / 16.8;
  }

  static double height50(BuildContext context) {
    return screenHeight(context) / 15.12;
  }

  static double width10(BuildContext context) {
    return screenWidth(context) / 36;
  }

  static double width15(BuildContext context) {
    return screenWidth(context) / 24;
  }

  static double width20(BuildContext context) {
    return screenWidth(context) / 18;
  }

  static double width25(BuildContext context) {
    return screenWidth(context) / 14.4;
  }

  static double width30(BuildContext context) {
    return screenWidth(context) / 12;
  }

  static double width35(BuildContext context) {
    return screenWidth(context) / 10.3;
  }

  static double width40(BuildContext context) {
    return screenWidth(context) / 9;
  }

  static double width45(BuildContext context) {
    return screenWidth(context) / 8;
  }

  static double width50(BuildContext context) {
    return screenWidth(context) / 7.2;
  }
}
