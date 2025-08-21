import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/track_order_btn.dart';

class ConfirmationView extends StatelessWidget {
  const ConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios) ,onPressed: () {
          context.pop();
        },),
        centerTitle: true,
        title: Text(
          AppStrings.checkOutTitle,
          style: CustomTextStyle.poppins,
        ),
 
    ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              spacing: 5,
                   mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40,),
                SvgPicture.asset(AppAssetes.confirmImage),
                SizedBox(height: 36.h,),
                Text("your order is confirmed!",style: CustomTextStyle.TitilliumWebBold16.copyWith(fontSize: 26,color: AppColor.green),),
                Text("your order code # 557775",style: CustomTextStyle.regular.copyWith(fontSize: 20),),
                Text("Thank you for choosing our products!",style: CustomTextStyle.regular.copyWith(fontSize: 20),),
                
                 SizedBox(height: 30.h,),
                CustomButton(onpressed: (){}, text: "Continue shopping",),
                SizedBox(height: 10,),
                TrackOrderBtn()
                 
              ],
            ),
          ),
        ),
      ),
    );
  }
}