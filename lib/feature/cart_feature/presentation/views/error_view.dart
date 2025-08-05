import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: Text(
          AppStrings.checkOutTitle,
          style: CustomTextStyle.poppins,
        ),
 
    ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            SvgPicture.asset(AppAssetes.ops),
            SizedBox(height: 36.h,),
            Text("Ops",style: CustomTextStyle.TitilliumWebBold16.copyWith(fontSize: 26,color: AppColor.red),),
            Text("Error while confirming your order/payment",style: CustomTextStyle.regular,),
             SizedBox(height: 60.h,),
            CustomButton(onpressed: (){}, text: "Back",color: AppColor.red,)
          ],
        ),
      ),
    );
  }
}