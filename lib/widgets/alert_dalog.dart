import 'package:flutter/material.dart';
import 'package:suitmedia_app_test/services/color_pallete.dart';

import 'custom_text.dart';
import 'custom_button.dart';

class OneButtonAlertDialog extends StatelessWidget {
  final String title;
  final String buttonText;
  final void Function() onPressed;

  const OneButtonAlertDialog({
    Key? key,
    required this.title,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: NormalText(
                title,
                textAlign: TextAlign.center,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: ColorPallete.primaryColor,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            CustomPrimaryButton(
              buttonText,
              color: ColorPallete.primaryColor,
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
