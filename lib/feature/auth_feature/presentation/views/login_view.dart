import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/routs/app_routs.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';

import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/aleardu_member_text.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/auth_header.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_row.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_text_form_filed.dart';

import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/phone_with_whatsap_text_filed.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AuthHeader(text: AppStrings.logintoWikala),
              SizedBox(height: 20.h),
              CustomRow(text: AppStrings.mobileNumberWithWhatspp),
        
             PhoneWithWhatsapTextFiled(),
              CustomRow(text: AppStrings.password),
              CustomTextFormFiled(text: AppStrings.password),
              GestureDetector(
                onTap: () {
                  context.go("/forgetPassword");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      AppStrings.forgetPassword,
                      style: TextStyle(
                        color: AppColor.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(onpressed: () {
                          context.go("/bottom");  
              }, text: AppStrings.login),
              
              SizedBox(height: 20.h),
              AlearduMemberText(
                text: AppStrings.dontHaveAccount,
                text2: AppStrings.signUp,
                onPressed: () {
                  context.go(AppRouter.signUp);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
