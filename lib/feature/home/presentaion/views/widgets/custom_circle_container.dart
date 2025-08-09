import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class CustomCircleContainer extends StatelessWidget {
  const CustomCircleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 82.h,
      width: 82.w,
      decoration: BoxDecoration(
        color: AppColor.white,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(blurRadius: 2, color: AppColor.greyShaded500)],
      ),
      child: Center(child: SvgPicture.asset(AppAssetes.compnyLogo)),
    );
  }
}