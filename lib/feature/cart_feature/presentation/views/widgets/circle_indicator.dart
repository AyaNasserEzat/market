import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';


class CircleIndicator extends StatelessWidget {
  const CircleIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
                  width: 25.w, 
                  height: 25.h,
          
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    border: Border.all(color: AppColor.green, width: .3),
          
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: CircleAvatar(radius: 4, backgroundColor: AppColor.green),
                  ),
                ),
              
        ],
      ),
    );
  }
}