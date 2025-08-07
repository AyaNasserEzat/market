import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/check_container.dart';

class SelectDeliveryTimeContainer extends StatelessWidget {
  const SelectDeliveryTimeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 402.w,
      height: 115.h,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(blurRadius: 2, color: AppColor.black.withOpacity(.2)),
        ],
      ),
       child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Select Delivery time",style: CustomTextStyle.TitilliumWebBold16,),
               CheckContainer()
              ],
            ),
            
                Text("Select Date",style: CustomTextStyle.regular,),
          ],
        ),
    ));
  }
}