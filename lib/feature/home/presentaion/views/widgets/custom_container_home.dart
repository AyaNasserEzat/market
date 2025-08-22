import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_circle_container.dart';

class CustomContainerHome extends StatelessWidget {
  const CustomContainerHome({super.key, required this.isOpen});
  final bool isOpen;
  @override
  Widget build(BuildContext context) {
        final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;


    return GestureDetector(
      onTap: () {
        context.push("/sallerProduct");
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0,right: 8),
        child: Container(
     //width: double.infinity,
      
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(color:Color(0x40000000), blurRadius: 4,offset: Offset(0, 1)),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 8,bottom: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 10,
              children: [
         CustomCircleContainer(),
                Column(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Saller Name ",style: CustomTextStyle.titilliumWebBoldBlack19,),
                        
                        Image.asset(AppAssetes.offerIcon),
                        SizedBox(width:80,),
                         Text("4.5",style: CustomTextStyle.regularTitilliumWeb16,),
                      ],
                    ),
                    Row(
             
                      children: [
                        Image.asset(AppAssetes.deliveryIcon),
                        Text(
                          "  Delivery charge:34.0 KD",
                          style: CustomTextStyle.regularTitilliumWeb,
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
                    SizedBox(width: 70,),
                      Text("23 KM ",style: CustomTextStyle.regularArial.copyWith(color: AppColor.green38),),
            
                                         SvgPicture.asset(
                        AppAssetes.locationIcon,
                        width: 18,
                        height: 18,
                      ),
                     
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
