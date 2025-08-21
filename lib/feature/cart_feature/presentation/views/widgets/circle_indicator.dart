import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';


class CircleIndicator extends StatelessWidget {
  const CircleIndicator({super.key, required this.isActive});
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
                  width: 25, 
                  height: 25,
          
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    border: Border.all(color: isActive? AppColor.green:AppColor.gray, width: .3),
          
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: CircleAvatar(radius: 4, backgroundColor:isActive? AppColor.green:AppColor.gray),
                  ),
                ),
              
        ],
      ),
    );
  }
}