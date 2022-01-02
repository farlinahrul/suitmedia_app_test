import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_app_test/modules/login/login_page.dart';

import 'modules/dashboard/DashboardPage.dart';

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
          iconTheme: IconThemeData(color: Colors.black),
        ),
        primarySwatch: Colors.deepOrange,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginPage(),
        DashboardPage.routeName: (context) => DashboardPage()
      },
    );
  }
}
