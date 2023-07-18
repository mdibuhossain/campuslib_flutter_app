// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:campuslib/providers/total_provider.dart';
import 'package:campuslib/routes/department/content.dart';
import 'package:campuslib/routes/department/department_page.dart';
import 'package:campuslib/routes/home/home_page.dart';
import 'package:campuslib/routes/profile/profile_page.dart';
import 'package:campuslib/routes/search/search_page.dart';
import 'package:campuslib/utils/routers.dart';
import 'package:campuslib/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
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
    // Content(),
    MainHomePage(),
    SearchPage(),
    ProfilePage(),
  ];

  var ctime;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    final provider = Provider.of<TotalProvider>(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      getPages: [
        GetPage(name: MyRouters.departmentRoute, page: () => DepartmentPage()),
        GetPage(name: MyRouters.contentRoute, page: () => Content()),
      ],
      home: Scaffold(
        bottomNavigationBar: BottomNavBar(),
        body: WillPopScope(
          onWillPop: () {
            DateTime now = DateTime.now();
            if (ctime == null || now.difference(ctime) > Duration(seconds: 2)) {
              //add duration of press gap
              ctime = now;
              Get.snackbar(
                "Exit warnning",
                "Press Back Button Again to Exit",
                snackPosition: SnackPosition.TOP,
                forwardAnimationCurve: Curves.bounceInOut,
                isDismissible: true,
              );
              return Future.value(false);
            }

            return Future.value(true);
          },
          child: _navPages.elementAt(provider.selectedNavIdx),
        ),
      ),
    );
  }
}
