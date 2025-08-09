import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_circle_container.dart';

class SallerCard extends StatelessWidget {
  const SallerCard({super.key, required this.isOpen});
  final bool isOpen;
  @override
  Widget build(BuildContext context) {
    return Container(
       width: 412.w,
        height: 110.h,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(color: AppColor.grey65.withOpacity(0.25), blurRadius: 4,offset: Offset(0, 0)),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:Row(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomCircleContainer(),
     
       Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text("saller name", style: CustomTextStyle.TitilliumWebBold16),
          Text(
            "Delivery :40 to 60 Min",
            style: CustomTextStyle.regularTitilliumWeb,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(backgroundColor: AppColor.gray2, radius: 3),
              Text(
                isOpen ? " Open  " : " closed  ",
                style:
                    isOpen
                        ? CustomTextStyle.regular.copyWith(
                          color: AppColor.green3,
                        )
                        : CustomTextStyle.regular.copyWith(
                          color: AppColor.red,
                        ),
              ),
              CircleAvatar(backgroundColor: AppColor.gray2, radius: 3),
              Text(
                "  4.5  ",
                style: CustomTextStyle.regular.copyWith(color: AppColor.blue),
              ),
            ],
          ),
        ],
      ),
      SizedBox(width: 90.w,),
    Image.asset(AppAssetes.offer,width: 40.w,)
    
    
    
          ])
    ),

        );
  }
}
