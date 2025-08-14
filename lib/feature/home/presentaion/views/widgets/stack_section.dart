import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class StackSection extends StatelessWidget {
  const StackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(30),
        //     color: AppColor.gray,
        //   ),
        //   width: 388.w,
        //   height: 232.h,
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(12),
        //     child: Image.asset(
        //       'assets/images/fruits.png',
        //       fit: BoxFit.fill,
        //     ), // بدليه بالصورة المناسبة
        //   ),
        // ),
        Image.asset("assets/images/image 10.png"),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            height: 29,
            width: 135,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Text(
              "10% Off Discount",
              style: CustomTextStyle.regularTitilliumWeb,
            ),
          ),
        ),
      ],
    );
  }
}
