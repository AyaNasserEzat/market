import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';

import 'package:pure_soft/core/utils/text_style.dart';

class ProssedToCheckoutSection extends StatelessWidget {
  const ProssedToCheckoutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Column(
          children: [
            Text("4 items in cart",style: CustomTextStyle.regular,),
            Text("37.00 KD",style:  CustomTextStyle.regular.copyWith(fontWeight: FontWeight.bold)),
         
          ],

        ),
          // CustomButton(onpressed: (){}, text: "hh",width: 181.w,height: 37.h,)
          SizedBox(
      width: 181.w,
      height: 38.h,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          
        ),
        child: Row(
          children: [
      
            Text("  Procced to checkout", style: CustomTextStyle.simebold12),
          ],
        ),
      ),
    )
      ],
    );
  }
}