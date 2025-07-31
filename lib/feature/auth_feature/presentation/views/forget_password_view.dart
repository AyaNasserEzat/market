import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/auth_header.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_row.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/phone_with_whatsap_text_filed.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/pin_code_fields.dart';

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
                const SizedBox(height: 24),
                AuthHeader(text: AppStrings.signUpTitle),
                const SizedBox(height: 32),
       
  CustomRow(text: "Phone"),
PhoneWithWhatsapTextFiled(),
                const SizedBox(height: 16),
                CustomButton(text: AppStrings.submit, onpressed: () {
              context.go("/otp");
                },),
                SizedBox(height: 20,),
         
              ],
            ),
          ),
        ),
      ),
    );
  }
}