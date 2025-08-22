import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_circle_container.dart';

class FavoritItem extends StatelessWidget {
  const FavoritItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            CustomCircleContainer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 10,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product Name ",
                      style: CustomTextStyle.titilliumWebBoldBlack19.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "12.00 KD  ",
                      style: CustomTextStyle.regularTitilliumWeb,
                    ),
                    Text(
                      " 14.00 KD",
                      style: CustomTextStyle.regular.copyWith(
                        decoration: TextDecoration.lineThrough,
                        color: AppColor.greyBE,
                        decorationColor: AppColor.greyBE,
                      ),
                    ),
                  ],
                ),

                Text(
                  "Store Name:store 1 ",
                  style: CustomTextStyle.titilliumWebBoldBlack19.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
       Spacer(),
           InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 25,
                    height: 25,
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
