import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';


class NowContainer extends StatelessWidget {
  const NowContainer({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 402.w,
      height: 70.h,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(15),

        boxShadow: [
          BoxShadow(blurRadius: 2, color: AppColor.black.withOpacity(.2)),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0,bottom: 10,left: 18,right: 18),
        child: child
      ),
    );
  }
}