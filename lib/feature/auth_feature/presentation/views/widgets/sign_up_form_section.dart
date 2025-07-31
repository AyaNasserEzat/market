import 'package:flutter/material.dart';

import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_row.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_text_form_filed.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/phone_with_whatsap_text_filed.dart';

class SignUpFormSection extends StatelessWidget {
  const SignUpFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      children: [
        CustomRow(text: AppStrings.fullName),
        CustomTextFormFiled(text: AppStrings.Name),
        CustomRow(text: AppStrings.mobileNumberWithWhatspp),

        PhoneWithWhatsapTextFiled(),
        CustomRow(text: AppStrings.password),
        CustomTextFormFiled(text: AppStrings.password),
      ],
    );
  }
}
