import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pure_soft/core/utils/app_color.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      //width: 347.w,
      height: 110.h,
      padding: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(28),

        boxShadow: [
          BoxShadow(blurRadius: 2, color: AppColor.black.withOpacity(.2)),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
         

          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,

         
        ),
      ),
    );}
}