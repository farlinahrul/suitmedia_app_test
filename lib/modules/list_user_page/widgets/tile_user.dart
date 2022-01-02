import 'package:flutter/material.dart';
import 'package:suitmedia_app_test/services/color_pallete.dart';

class UserTile extends StatelessWidget {
  final String username, email, photoProfile;

  UserTile(
      {required this.username,
      required this.email,
      required this.photoProfile});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 18,
        top: 16,
        bottom: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 64,
            height: 64,
            child: ClipOval(
              child: Image.network(
                photoProfile,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 8,
                    ),
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      text: TextSpan(
                        text: username,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    email,
                    style: TextStyle(
                      color: ColorPallete.greyLight,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
