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
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 81.h),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text(AppStrings.skip, style: CustomTextStyle.regular)],
              ),
            ),
              SizedBox(height: 81.h),
            Image.asset(onBordingModel.image),
            Text(onBordingModel.title, style: CustomTextStyle.poppins.copyWith(color: AppColor.black)),
             SizedBox(height: 16.h),
            Text(onBordingModel.subTitle, style: CustomTextStyle.regular),
             SizedBox(height: 98.h),
            CustomIndicator(currentIndex: currentIndex),
             SizedBox(height: 98.h),
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
    );
  }
}
