import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/auth_header.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_row.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/phone_with_whatsap_text_filed.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

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
                AuthHeader(text: AppStrings.signUpTitle),
                 SizedBox(height: 32.h),
       
  CustomRow(text: "Phone"),
PhoneWithWhatsapTextFiled(),
                 SizedBox(height: 16.h),
                CustomButton(text: AppStrings.submit, onpressed: () {
              context.go("/otp");
                },),
                SizedBox(height: 20.h,),
         
              ],
            ),
          ),
        ),
      ),
    );
  }
}