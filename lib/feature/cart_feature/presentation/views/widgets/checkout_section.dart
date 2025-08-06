import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/dash_row.dart';

class CheckoutSection extends StatelessWidget {
  const CheckoutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
  DashRow(),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Subtotal", style: CustomTextStyle.regular),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "35.00",
                    style: CustomTextStyle.TitilliumWebBold16.copyWith(fontSize: 21.sp,color: AppColor.gray),
                  ),
                  TextSpan(
                    text: "KD",
                    style: CustomTextStyle.regular.copyWith(fontSize: 12.sp,fontWeight: FontWeight.bold),
                  ),
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
                    text: "35.00",
                    style: CustomTextStyle.regular.copyWith(fontSize: 16.sp),
                  ),
                  TextSpan(
                    text: "KD",
                    style: CustomTextStyle.regular.copyWith(fontSize: 12.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Bag total", style: CustomTextStyle.TitilliumWebBold16),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "35.00",
                    style: CustomTextStyle.TitilliumWebBold16,
                  ),
                  TextSpan(
                    text: "KD",
                    style: CustomTextStyle.TitilliumWebBold16.copyWith(
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
