import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 90.w,
          height: 100.h,
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(16),
boxShadow: [
            BoxShadow(color:Color(0x40000000), blurRadius: 4,offset: Offset(0, 0)),
          ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:Image.asset(image))
    );
  }
}