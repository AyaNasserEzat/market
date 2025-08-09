import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class CustomgategoryContainr extends StatelessWidget {
  const CustomgategoryContainr({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
color: AppColor.white,
          boxShadow: [BoxShadow(color: Color(0x40000000) , blurRadius: 4,offset: Offset(0, 1))],
        ),
        width: 110.w,
        height: 80.h,

        child: Image.asset(image),
      ),
    );
  }
}
