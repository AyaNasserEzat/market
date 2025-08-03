import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.isOpen});
  final bool isOpen;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go("/sallerProduct");
      },
      child: Container(
        width: 412.w,
        height: 104.h,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 2),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            spacing: 10,
            children: [
              CircleAvatar(radius: 35),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Saller Name ",style: CustomTextStyle.bold19,),
                      
                      Image.asset("assets/images/offer.png"),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/delaviry_image.png"),
                      Text(
                        " Delivery charge:34 KD",
                        style: CustomTextStyle.regular,
                      ),
                    ],
                  ),
      
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(backgroundColor: AppColor.gray2, radius: 3),
                      Text(
                        isOpen ? " Open  " : " closed  ",
                        style: isOpen?CustomTextStyle.regular.copyWith(color: AppColor.green3): CustomTextStyle.regular.copyWith(color: AppColor.red),
                      ),
                      CircleAvatar(backgroundColor: AppColor.gray2, radius: 3),
                      Text("  Pizaa  ", style: CustomTextStyle.regular.copyWith(color: AppColor.blue)),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("4.5"),
                  Row(
                    children: [
                      Text("23 KM ",style: CustomTextStyle.arial.copyWith(fontSize: 12.sp,color: AppColor.green),),
          
                      Icon(Icons.location_on_rounded,size: 12,),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
