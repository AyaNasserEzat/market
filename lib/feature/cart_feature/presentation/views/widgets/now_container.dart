import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';


class NowContainer extends StatelessWidget {
  const NowContainer({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return  Container(
      // width: 402.w,
      // height: 70.h,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(15),

        boxShadow: [
          BoxShadow(blurRadius: 2, color: AppColor.black.withOpacity(.2)),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0,bottom: 8,left: 10,right: 10),
        child: child
      ),
    );
  }
}