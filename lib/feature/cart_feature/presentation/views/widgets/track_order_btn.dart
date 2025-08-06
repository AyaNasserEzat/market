import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class TrackOrderBtn extends StatelessWidget {
  const TrackOrderBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
     // width: 347.w,
      height: 51,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.green),
        borderRadius: BorderRadius.circular(28),
        color: AppColor.white
      ),
      child: Center(child: Text("track order",style: CustomTextStyle.TitilliumWebBold16,)),
    );
  }
}