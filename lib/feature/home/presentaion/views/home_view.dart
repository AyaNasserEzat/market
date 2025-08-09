import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_indicator.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_container.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_category_containr.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.appTitle, style: CustomTextStyle.poppins),
        actions: [
          SvgPicture.asset(AppAssetes.searchIcon, width: 25, height: 30),
          SizedBox(width: 10),
          SvgPicture.asset(AppAssetes.filterIcon, width: 25, height: 35),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: Column(
            children: [
              Divider(color: AppColor.gray),
              Image.asset(AppAssetes.homeImage, width: 400.w, height: 130.h),
              SizedBox(height: 15.h),
              CustomIndicator(currentIndex: 0),
                    SizedBox(height: 15.h),
              SizedBox(
                height: 130.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomgategoryContainr(image: "assets/images/image 6.png"),
                    CustomgategoryContainr(image: "assets/images/image 5.png"),
                    CustomgategoryContainr(image: "assets/images/image 7.png"),
                    CustomgategoryContainr(image: "assets/images/image 8.png"),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sallers", style: CustomTextStyle.titilliumWebBoldBlack19),
                    Text("Show all", style: CustomTextStyle.arial),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 400.h,
              //   child: ListView.separated(
              //     itemCount: 4,
              //     itemBuilder: (context,index){
              //     return   CustomContainer(isOpen: true,);
              //   }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 15.h,); },),
              // )
              CustomContainer(isOpen: true),
              SizedBox(height: 15,),
                   CustomContainer(isOpen: true),
            ],
          ),
        ),
      ),
    );
  }
}
