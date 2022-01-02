import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_app_test/modules/dashboard/dashboard_page.dart';
import 'package:suitmedia_app_test/modules/login/login_page.dart';
import 'package:suitmedia_app_test/services/color_pallete.dart';

import 'modules/list_user_page/list_user_page.dart';

void main() async {
  runApp(InfosysApp());
}

class InfosysApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Suitmedia - Test App',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: ColorPallete.primaryColor),
        ),
        primaryColor: Colors.white,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginPage(),
        DashboardPage.routeName: (context) => DashboardPage(),
        ListUserPage.routeName: (context) => ListUserPage()
      },
    );
  }
}
