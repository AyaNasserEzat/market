import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
              Text(
                "Fruit Market",
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColor.green,
                ),
              ),
              SizedBox(height: 20.h,),
              Text(
               text,
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColor.black,
                ),
              ),
      ],
    );
  }
}