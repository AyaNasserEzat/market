import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/routs/app_routs.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';

import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/auth_feature/data/models/on_bording_model.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_indicator.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/onbording_btn.dart';

class OnbordingPage extends StatefulWidget {
  const OnbordingPage({super.key});

  @override
  State<OnbordingPage> createState() => _OnbordingPageState();
}

class _OnbordingPageState extends State<OnbordingPage> {
  int currentIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: constraints.maxHeight * .10),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Align(
                      
                        alignment: Alignment.topRight,

                        child:
                        
                       currentIndex<2?  InkWell(
                          onTap: () {
                            context.go("/login");
                          },
                          child: Text(
                            AppStrings.skip,
                            style: CustomTextStyle.regular.copyWith(
                              decoration: TextDecoration.underline,
                              decorationColor: AppColor.gray,
                            ),
                          ),
                        ):SizedBox(height: 20,)
                      ),
                    ),
                    SizedBox(height: constraints.maxHeight * .012),
                    Image.asset(AppAssetes.onbording),
                    SizedBox(
                      height: 200,
                      child: PageView.builder(
                        controller: pageController,
                        onPageChanged: (int index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        itemCount: OnBordingModel.onBordingList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Text(
                                OnBordingModel.onBordingList[index].title,
                                style: CustomTextStyle.poppins.copyWith(
                                  color: AppColor.black,
                                ),
                              ),
                              SizedBox(height: constraints.maxHeight * .018),
                              Text(
                                OnBordingModel.onBordingList[index].subTitle,
                                style: CustomTextStyle.regular,
                              ),
                              SizedBox(height: constraints.maxHeight * .033),
                              CustomIndicator(currentIndex: currentIndex),
                              SizedBox(height: constraints.maxHeight * .088),
                            ],
                          );
                        },
                      ),
                    ),
                    OnbordingBtn(
                      text: currentIndex < 2 ? "Next" : "Get Started",
                      onTap: () {
                        if (currentIndex < 2) {
                          pageController.nextPage(
                            duration: Duration(microseconds: 1000),
                            curve: Curves.ease,
                          );
                        } else {
                          context.push("/signView");
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
