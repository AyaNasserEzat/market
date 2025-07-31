import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:pure_soft/core/utils/app_color.dart';

class AlearduMemberText extends StatelessWidget {
  const AlearduMemberText({super.key, required this.text, required this.text2, required this.onPressed});
final String text;
final String text2;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
                    TextSpan(
    children: [
    TextSpan(
      text: text,
      style: TextStyle(color: AppColor.black),
    ),
     TextSpan(
      text: text2,

      style: TextStyle(color: AppColor.blue,decoration: TextDecoration.underline),
      recognizer:TapGestureRecognizer()..onTap=onPressed
    )
                  ]));
  }
}