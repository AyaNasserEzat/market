import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return   Row(
          children: [
            Text(text,style: TextStyle(color:AppColor.gray),),

           Text(" *",style: TextStyle(color: AppColor.orange),)
          ],
        );
  }
}