import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_row.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_text_form_filed.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/phone_with_whatsap_text_filed.dart';

class UpdateProfileView extends StatelessWidget {
  const UpdateProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            
            children: [
            
              SizedBox(height: 45),
              Stack(
                children: [
                  Container(
                    width: 80,
                    height: 80,
          
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColor.gray),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 4,
                    child: SvgPicture.asset(
                      'assets/images/camera.svg',
                      width: 24,
                      height: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text("Welcom, Alaa", style: CustomTextStyle.bold19),
              SizedBox(height:10),
              CustomRow(text: AppStrings.Name),
              SizedBox(height:10),
              CustomTextFormFiled(text: AppStrings.Name),
              SizedBox(height:10),
              CustomRow(text: AppStrings.mobileNumberWithWhatspp),
          SizedBox(height:10),
              PhoneWithWhatsapTextFiled(),
              SizedBox(height:10),
              CustomRow(text: AppStrings.password),
              SizedBox(height:10),
              CustomTextFormFiled(text: AppStrings.password),
            ],
          ),
        ),
      ),
    );
  }
}
