import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_app_test/data/controllers/dashboard_controller.dart';
import 'package:suitmedia_app_test/widgets/alert_dalog.dart';

class LoginController extends GetxController {
  TextEditingController? nameTextController;
  TextEditingController? palindromeTextController;

  @override
  void onInit() {
    nameTextController = TextEditingController();
    palindromeTextController = TextEditingController();
    super.onInit();
  }

  bool _isPalindrome(String str) {
    str = str.replaceAll(" ", "");
    String reverse = str.split('').reversed.join('');
    if (str == reverse) {
      return true;
    }
    return false;
  }

  void check() {
    String title = '';
    if (_isPalindrome(palindromeTextController!.text) &&
        palindromeTextController!.text.length != 0) {
      title = 'isPalindrome';
    } else {
      title = 'not Palindrome';
    }
    Get.dialog(
      OneButtonAlertDialog(
        title: title,
        buttonText: 'Close',
        onPressed: () {
          Get.back();
        },
      ),
      barrierDismissible: false,
    );
  }

  void next() {
    final DashboardController _dashboardController =
        Get.put(DashboardController());
    Get.toNamed('/dashboard');
    _dashboardController.changeName(nameTextController!.text);
  }

  @override
  void onClose() {
    nameTextController?.dispose();
    palindromeTextController?.dispose();
    super.onClose();
  }
}
