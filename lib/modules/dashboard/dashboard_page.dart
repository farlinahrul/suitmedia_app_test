import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_app_test/data/controllers/dashboard_controller.dart';
import 'package:suitmedia_app_test/modules/list_user_page/list_user_page.dart';
import 'package:suitmedia_app_test/widgets/custom_button.dart';

class DashboardPage extends StatelessWidget {
  static const routeName = '/dashboard';
  final DashboardController _dashboardController =
      Get.find<DashboardController>();

  Widget buttonUser() {
    return Padding(
      padding: EdgeInsets.only(bottom: 32),
      child: CustomPrimaryButton(
        'Choose a User',
        onPressed: () => Get.to(() => ListUserPage()),
      ),
    );
  }

  Widget titleText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome'),
        GetBuilder<DashboardController>(
          init: DashboardController(),
          builder: (_) => Text(
            '${_dashboardController.name}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Second Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 14),
            titleText(),
            Expanded(
              child: Container(),
            ),
            buttonUser()
          ],
        ),
      ),
    );
  }
}
