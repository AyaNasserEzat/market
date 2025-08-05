import 'package:flutter/material.dart';

import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class CustomSmallBtn extends StatelessWidget {
  const CustomSmallBtn({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
        onPressed: (){},
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