import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/agreement_text.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/aleardu_member_text.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/auth_header.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/login_button_section.dart';

class SignUpSelectionView extends StatelessWidget {
  const SignUpSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AuthHeader(text: AppStrings.welcomeMessage,),
                SizedBox(height: 20.h),
                LoginButtonSection(),
                AlearduMemberText(text: AppStrings.alreadyMember,text2: AppStrings.signIn,onPressed: (){
                  context.go("/login");
                },),
                SizedBox(height: 40.h),
                AgreementText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}