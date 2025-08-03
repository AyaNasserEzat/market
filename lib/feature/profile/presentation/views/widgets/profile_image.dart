import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
    
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColor.gray),
      ),
      child: Center(child: Image.asset('assets/images/Icon feather-user.png',width: 31,height: 34,)) ,
    );
  }
}