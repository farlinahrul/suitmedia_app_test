import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_app_test/modules/dashboard/DashboardPage.dart';
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
    if (_isPalindrome(palindromeTextController!.text)) {
      title = 'isPalindrome';
    } else {
      title = 'not Palindrome';
    }
    Get.dialog(
      OneButtonAlertDialog(
        title: title,
        buttonText: 'Next',
        onPressed: () {
          Get.back();
        },
      ),
      barrierDismissible: false,
    );
  }

  void next() {
    Get.to(() => DashboardPage());
  }

  @override
  void onClose() {
    nameTextController?.dispose();
    palindromeTextController?.dispose();
    super.onClose();
  }
}
