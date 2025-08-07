import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/check_container.dart';

class AdressDetailsContainer extends StatelessWidget {
  const AdressDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            width: 402.w,
      height: 250.h,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(15),

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.location_on),
                Text("Address 1",style: CustomTextStyle.TitilliumWebBold16,),
                SizedBox(width: 200,),
                CheckContainer(),
            
            
              ],
            ),
            Text("Alaa nasser",style: CustomTextStyle.regularTitilliumWeb16,),
            Text("+01-56-9900",style: CustomTextStyle.regularTitilliumWeb16,),
            Text("Room #1 ground floor Al nagoun Bulding 23 B street Debui, united arab elmus",style: CustomTextStyle.regularTitilliumWeb16.copyWith(color: AppColor.grey65),)
          ],
        ),
      ),
      
    );
  }
}