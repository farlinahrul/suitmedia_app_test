import 'package:flutter/material.dart';
import 'package:suitmedia_app_test/services/color_pallete.dart';

enum ButtonType { Small, Fit }

class CustomPrimaryButton extends StatelessWidget {
  final String label;
  final Function()? onPressed;
  final bool? enable;
  final bool? rounded;
  final Color? color;

  const CustomPrimaryButton(this.label,
      {Key? key,
      this.onPressed,
      this.enable = true,
      this.rounded = true,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 12),
          backgroundColor: color == null ? ColorPallete.primaryColor : color,
          shape: RoundedRectangleBorder(
            borderRadius: rounded!
                ? BorderRadius.circular(12.0)
                : BorderRadius.circular(5.0),
          ),
          primary: Colors.white,
          elevation: 0.0,
        ),
        onPressed: onPressed,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
