import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.icon, required this.text, required this.color, required this.widget, required this.textcolor});
 final IconData icon;
 final String text;
 final Color color;
 final Widget widget;
 final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        
        height: 51.h,
        width: 347.w,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: AppColor.gray,width: .5),
          borderRadius: BorderRadius.circular(26)
        ),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Container(
          child: widget,
        ),
            SizedBox(width: 10.w,),
            Text(text,style: TextStyle(color: textcolor),)
          ],
        ),
      ),
    );
  }


}