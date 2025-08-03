import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';

import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/aleardu_member_text.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/auth_header.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/pin_code_fields.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 SizedBox(height: 24.h),
                AuthHeader(text: AppStrings.enterOtp),
                 SizedBox(height: 32.h),
  
PinCodeFields(),
SizedBox(height: 20.h,),
           
                CustomButton(text: AppStrings.confirm, onpressed: () {
              
                },),
                      SizedBox(height: 16.h),
                     
            Text("60",style: TextStyle(color: AppColor.gray2,fontSize: 28.sp),),
            AlearduMemberText(text: AppStrings.notReceived, text2: AppStrings.sendAgain, onPressed: (){})
              ],
            ),
          ),
        ),
      ),
    );
  }
}