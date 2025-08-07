import 'package:flutter/material.dart';

import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class CustomSmallBtn extends StatelessWidget {
  const CustomSmallBtn({super.key, required this.text, required this.ontap});
final String text;
final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
            Text(text, style: CustomTextStyle.simebold12),
          ],
        ),
      );
  }
}