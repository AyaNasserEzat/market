
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/database/api/dio_concumer.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_indicator.dart';
import 'package:pure_soft/feature/home/data/remote_data_sourse.dart/home_remote_data_source.dart';
import 'package:pure_soft/feature/home/data/repo/home_repo.dart';
import 'package:pure_soft/feature/home/presentaion/view_models/vendor_cubit.dart/vendor_cubit.dart';

import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_category_containr.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/filter_dailog.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/grid_view_layout.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/silder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final bool isLandScap=MediaQuery.of(context).orientation==Orientation.landscape;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,  
          surfaceTintColor: Colors.transparent,
          title: Text(AppStrings.appTitle, style: CustomTextStyle.poppins),
          actions: [
            InkWell(
              onTap: (){
                context.push("/search");
              },
              child: SvgPicture.asset(AppAssetes.searchIcon, width: 25, height: 30)),
            SizedBox(width: 10),
            InkWell(
              onTap: () {
             showDialog(context: context, builder: (context){
              return FilterDailog();
             });
              },
              child: SvgPicture.asset(AppAssetes.filterIcon, width: 25, height: 35)),
          ],
        ),
        body: BlocProvider(
                create: (context) => VendorCubit(
        HomeRepoImpl(
          homeRemoteDataSource: HomeRemoteDataSourceImpl(
            api: DioConcumer(dio: Dio()),
          ),
        ),
      )..getVendor(), 
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                // Header content
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Divider(color: AppColor.gray),
                       // Image.asset(AppAssetes.homeImage, ),
           ImageCarouselWithCustomIndicator(),
                   
                   
                        SizedBox(height: 15.h),
                        SizedBox(
                          height: isLandScap? screenHeight * .30:screenHeight * .15,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              CustomCategoryContainer(image: "assets/images/image 6.png"),
                              CustomCategoryContainer(image: "assets/images/image 5.png"),
                              CustomCategoryContainer(image: "assets/images/image 7.png"),
                              CustomCategoryContainer(image: "assets/images/image 8.png"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0,left: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Sallers", style: CustomTextStyle.titilliumWebBoldBlack19),
                              Text("Show all", style: CustomTextStyle.arial),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            
                // Sellers list
                GridViewLayout()
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
