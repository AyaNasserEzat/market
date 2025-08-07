

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';

import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';

import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_text_form_filed.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/custom_small_btn.dart';
import 'package:pure_soft/feature/profile/presentation/views/widgets/message_container.dart';

class CancleOrderDialog extends StatelessWidget {
  const CancleOrderDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return  Dialog(
      backgroundColor: AppColor.white,
child: 
     Padding(
       padding: const EdgeInsets.all(16.0),
       child: Column(
        spacing: 5,
       mainAxisSize: MainAxisSize.min,
            children: [
               Text(AppStrings.cancleOrder,style: CustomTextStyle.TitilliumWebBold16.copyWith(fontSize: 18),),
              Align(
                alignment: Alignment.topLeft,
                child: Text(AppStrings.reason,style: CustomTextStyle.regularArial,)),
              CustomTextFormFiled(text: ""),
                        Align(
                               alignment: Alignment.topLeft,
                          child: Text(AppStrings.notes,style: CustomTextStyle.regularArial,)),
          MessageContainer(height: 77.h,),
         SizedBox(height: 5.h,),
            SizedBox(
              width: 224.w,
              height: 44.h,
              child: CustomSmallBtn( text: AppStrings.confirmCanclation,ontap: () {
                
              },)),
            
            TextButton(onPressed: (){}, child: Text(AppStrings.close,style: CustomTextStyle.regular,))
           
            ],
          ),
     ),
  

      );
  
  }
}