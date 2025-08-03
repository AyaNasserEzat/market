import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class FavoritItem extends StatelessWidget {
  const FavoritItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          width: 412.w,
          height: 115.h,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                CircleAvatar(radius: 35),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Product Name ",style: CustomTextStyle.bold19,),
                        
                 
                      ],
                    ),
                    Row(
                      children: [
                      Text("12.00 KD  "),
                        Text(
                          " 14.00 KD",
                          style: CustomTextStyle.regular.copyWith(decoration: TextDecoration.lineThrough,color: AppColor.gray),
                        ),
                      ],
                    ),
                       Text("Store Name:store 1 ",style: CustomTextStyle.bold19,),
        
           
                  ],
                ),
                SizedBox(width: 60.w,),
                InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 25.w,
                    height: 25.h,
                     decoration: BoxDecoration(
                              color: AppColor.white,
                      shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 2),
                              ],
                            ),
                    child: Center(child: Icon(Icons.close,size: 13,),)),
                ),
              ],
            ),
            
          ),
        );
  }
}