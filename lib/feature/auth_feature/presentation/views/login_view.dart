import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/routs/app_routs.dart';

import 'package:pure_soft/core/utils/app_strings.dart';

import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/aleardu_member_text.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/auth_header.dart';


import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/login_form_section.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                          SizedBox(height: 40.h),
                  AuthHeader(text: AppStrings.logintoWikala),
                  SizedBox(height: 20.h),
                 LoginFormSection(),
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
        ),
      ),
    );
  }
}
