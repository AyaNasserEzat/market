import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 80.h,
    
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColor.gray),
      ),
      child: Center(child: Image.asset('assets/images/Icon feather-user.png',width: 31.w,height: 34.h,)) ,
    );
  }
}