import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class OrderDetailsSection extends StatelessWidget {
  const OrderDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("total term", style: CustomTextStyle.regularTitilliumWeb16.copyWith(color: AppColor.grey65)),
            Text("4 item in cart", style: CustomTextStyle.TitilliumWebBold16.copyWith(color: AppColor.grey65)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Subtotal", style: CustomTextStyle.regular),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "35.00",
                    style: CustomTextStyle.TitilliumWebBold16.copyWith(
               
                      color: AppColor.grey65,
                    ),
                  ),
                  TextSpan(
                    text: "KD",
                    style: CustomTextStyle.TitilliumWebBold16.copyWith(color: AppColor.grey65)),
                ],
              ),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shiping Charge", style: CustomTextStyle.regular),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "1.5",
                    style: CustomTextStyle.TitilliumWebBold16.copyWith(color: AppColor.grey65),
                  ),
                  TextSpan(
                    text: "KD",
                    style: CustomTextStyle.regular.copyWith(fontSize: 12.sp,color: AppColor.greyBE),
                  ),
                ],
              ),
            ),
          ],
        ),
                    Divider(color: AppColor.gray,),

      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(" Bag total", style: CustomTextStyle.TitilliumWebBold16),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "37.5",
                    style: CustomTextStyle.regular.copyWith(fontSize: 16.sp),
                  ),
                  TextSpan(
                    text: "KD",
                    style: CustomTextStyle.regular.copyWith(fontSize: 12.sp),
                  ),
                ],
              ),
            ),
          ],)
      ],
    );
  }
}
