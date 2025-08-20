import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';

import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/auth_feature/data/models/on_bording_model.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_indicator.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/onbording_btn.dart';


class OnbordingPage extends StatelessWidget {
  const OnbordingPage({
    super.key,
    required this.onBordingModel,
    required this.currentIndex,
    required this.pageController,
  });
  final OnBordingModel onBordingModel;
  final int currentIndex;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) { 

        return  SingleChildScrollView(
          child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: constraints.maxHeight*.12),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [InkWell(
                      onTap: () {
                        context.go("/login");
                      },
                      child: Text(AppStrings.skip, style: CustomTextStyle.regular))],
                  ),
                ),
                SizedBox(height: constraints.maxHeight*.012),
                Image.asset(onBordingModel.image),
                Text(onBordingModel.title, style: CustomTextStyle.poppins.copyWith(color: AppColor.black)),
                SizedBox(height: constraints.maxHeight*.018),
                Text(onBordingModel.subTitle, style: CustomTextStyle.regular),
               SizedBox(height: constraints.maxHeight*.033),
                CustomIndicator(currentIndex: currentIndex),
                  SizedBox(height: constraints.maxHeight*.099),
                OnbordingBtn(text: currentIndex<2? "next":"Get Started", onTap: () {
            if (currentIndex<2) {
              pageController.nextPage(duration: Duration(microseconds:1000 ), curve: Curves.ease);
            }
            else{
              context.push("/login");
            }
            
                }),
              ],
            ),
          ),
                ),
        );
       },
    
    );
  }
}
