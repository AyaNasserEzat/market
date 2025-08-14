
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';

import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_text_form_filed.dart';
import 'package:pure_soft/feature/profile/presentation/views/widgets/contact_row_icons.dart';
import 'package:pure_soft/feature/profile/presentation/views/widgets/message_container.dart';


class SupportView extends StatelessWidget {
  const SupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
                title: Text(AppStrings.contactUs, style: CustomTextStyle.poppins),
        centerTitle: true,
        leading: IconButton(onPressed: () {
          context.pop();
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text(AppStrings.Name,style: CustomTextStyle.regular,),
          CustomTextFormFiled(text: ""),
          Text(AppStrings.mobileNumber,style: CustomTextStyle.regular,),
          CustomTextFormFiled(text: ""),
            Text(AppStrings.message,style: CustomTextStyle.regular,),
          MessageContainer(height: 110,),
          CustomButton(onpressed: (){}, text: AppStrings.submit),
SizedBox(height: 10,),
          ContactRowIcons()
          
          
            ],
          ),
        ),
      ),
    );
  }
}