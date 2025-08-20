

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';

import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';

import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_text_form_filed.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/custom_small_btn.dart';
import 'package:pure_soft/feature/order_feature/presentaion/views/widgets/cancle_section.dart';
import 'package:pure_soft/feature/order_feature/presentaion/views/widgets/custom_btn_dailog.dart';
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

        CancleSection(),

           CustomBtnDailog(text: AppStrings.close,),
            ],
          ),
     ),
  

      );
  
  }
}