import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class NowTimeRow extends StatelessWidget {
  const NowTimeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Now",style: CustomTextStyle.TitilliumWebBold16.copyWith(color: AppColor.black),),
            Container(
              width: 40.w,
              height: 38.h,
              decoration: BoxDecoration(
                color: AppColor.white,
                shape: BoxShape.circle,
                border: Border.all(color: AppColor.black,)
              ),
            )
          ],
        );
  }
}