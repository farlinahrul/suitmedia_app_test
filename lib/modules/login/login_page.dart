import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_app_test/data/controllers/login_controller.dart';
import 'package:suitmedia_app_test/widgets/custom_button.dart';

class LoginPage extends StatelessWidget {
  static String routeName = "/login-page";
  final LoginController _loginController = Get.put(LoginController());

  Widget buttonNext() {
    return CustomPrimaryButton(
      'NEXT',
      onPressed: () => _loginController.next(),
    );
  }

  Widget buttonCheck() {
    return CustomPrimaryButton(
      'CHECK',
      onPressed: () => _loginController.check(),
    );
  }

  Widget formPalindrome() {
    return TextFormField(
      controller: _loginController.palindromeTextController,
      decoration: InputDecoration(
        hintText: 'Palindrome',
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget formName() {
    return TextFormField(
      controller: _loginController.nameTextController,
      decoration: InputDecoration(
        hintText: 'Name',
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget imageLogo(BuildContext context) {
    return Image.asset(
      'assets/images/btn_add_photo .png',
      height: MediaQuery.of(context).size.height / 6,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/background.png'))),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                imageLogo(context),
                SizedBox(
                  height: 58,
                ),
                formName(),
                SizedBox(
                  height: 22,
                ),
                formPalindrome(),
                SizedBox(
                  height: 45,
                ),
                buttonCheck(),
                SizedBox(
                  height: 15,
                ),
                buttonNext()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
