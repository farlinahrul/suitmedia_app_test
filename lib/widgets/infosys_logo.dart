import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/logos/infosys_logo.png'),
      fit: BoxFit.fill,
    );
  }
}
