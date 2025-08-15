import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';


class OnbordingBtn extends StatelessWidget {
  const OnbordingBtn({super.key, required this.text, required this.onTap});
final String text;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
       height: 50,
       width: 170,
      child: ElevatedButton(
        onPressed:onTap,
        style: ElevatedButton.styleFrom(
      backgroundColor: AppColor.green, // لون الزرار نفسه
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25), // الـ radius
      ),
      shadowColor: AppColor.black, // لون الظل
      elevation: 10, // قوة الظل
        ),
        child: Text(
      text,
      style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}