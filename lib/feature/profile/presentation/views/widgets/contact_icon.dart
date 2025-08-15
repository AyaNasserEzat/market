import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key, required this.icon});
final String icon;
  @override
  Widget build(BuildContext context) {
    bool isLandScape=MediaQuery.of(context).orientation==Orientation.landscape;
    return  Container(
      alignment: Alignment.center,
  width: isLandScape? 60: 55.w,
  height:isLandScape?60: 55.h,
      decoration: BoxDecoration(
        
        border: Border.all(color: AppColor.black,width:.5),
        shape: BoxShape.circle
      ),
      child: SvgPicture.asset(icon,width: 25,height: 25,),
    );
  }
}