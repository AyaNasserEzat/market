import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/dash_line.dart';

class CheckoutSection extends StatelessWidget {
  const CheckoutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8),
      child: Column(
        children: [
     CustomPaint(
      size: Size(screenWidth-8, 8),
      painter: DashLine(),
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
                      style: CustomTextStyle.TitilliumWebBold16.copyWith(color: AppColor.grey65),
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
                      text: "1.5",
                      style: CustomTextStyle.TitilliumWebBold16.copyWith(color: AppColor.grey65),
                    ),
                    TextSpan(
                      text: "KD",
                      style: CustomTextStyle.TitilliumWebBold16.copyWith(color: AppColor.greyBE),
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
      ),
    );
  }
}
