import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/aleardu_member_text.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/auth_header.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/sign_up_form_section.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
  
SignUpFormSection(),
                const SizedBox(height: 16),
                CustomButton(text: AppStrings.signUp, onpressed: () {
              
                },),
                SizedBox(height: 20,),
                AlearduMemberText(
                  text: AppStrings.loginRedirect,
                  text2: AppStrings.login,
                  onPressed: (){
                    context.go("/login");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
