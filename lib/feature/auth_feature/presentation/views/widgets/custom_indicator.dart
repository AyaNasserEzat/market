import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';


class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    super.key,required this.currentIndex
  });
final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          width: 12,
          height: 12,
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          decoration: BoxDecoration(
            color:currentIndex==index?AppColor.green: AppColor.white,
            border: Border.all(color: AppColor.green),
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
