import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_circle_container.dart';

class CustomProductContainer extends StatelessWidget {
  const CustomProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        context.push("/productDetails");
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0,left: 8),
        child: Container(
        
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
            CustomCircleContainer(),
                  Column(
                    spacing: 4,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Product Name ",style: CustomTextStyle.TitilliumWebBold16.copyWith(color: AppColor.black),),
                          
                   
                        ],
                      ),
                      Row(
                        children: [
                        Text("12.00 KD  ",style:  CustomTextStyle.regularTitilliumWeb,),
                          Text(
                            " 14.00 KD",
                            style: CustomTextStyle.regular.copyWith(decoration: TextDecoration.lineThrough,color: AppColor.gray),
                          ),
                        ],
                      ),
          
                 Container(
                  
                  width: 102,
                  height: 22,
                  decoration: BoxDecoration(
                    color: AppColor.pink,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(child: Text("up to 50% off",style: CustomTextStyle.simebold12,)),
                 )
                    ],
                  ),
         Spacer(),
                  CircleAvatar(
                    backgroundColor: AppColor.green,
                    radius: 25,
                    child: Image.asset(AppAssetes.shop)),
                ],
              ),
            ),
          ),
      ),
    );
  }
}