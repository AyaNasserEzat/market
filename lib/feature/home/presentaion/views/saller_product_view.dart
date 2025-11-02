import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/database/api/dio_concumer.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/data/models/vendor.dart';
import 'package:pure_soft/feature/home/data/remote_data_sourse.dart/home_remote_data_source.dart';
import 'package:pure_soft/feature/home/data/repo/home_repo.dart';
import 'package:pure_soft/feature/home/presentaion/view_models/vendor_cubit.dart/vendor_cubit.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/category_list_view.dart';


import 'package:pure_soft/feature/home/presentaion/views/widgets/products_list_view.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/saller_card.dart';

class SallerProductView extends StatelessWidget {
  const SallerProductView({super.key, required this.vendor});
final Vendor vendor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                        scrolledUnderElevation: 0,  
        surfaceTintColor: Colors.transparent,
      
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            context.pop();
          },
        ),
        centerTitle: true,
        title: Text(AppStrings.appTitle, style: CustomTextStyle.poppins),
        actions: [Icon(Icons.search, color: AppColor.green, size: 40)],
      ),
      body: BlocProvider(
        create: (context) => VendorCubit(
        HomeRepoImpl(
          homeRemoteDataSource: HomeRemoteDataSourceImpl(
            api: DioConcumer(dio: Dio()),
          ),
        ),
      )..getVendorProducts(vendor.id), 
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          
                SallerCard(vendor: vendor),
                Text(
                  "Categories",
                  style: CustomTextStyle.TitilliumWebBold16.copyWith(
                    fontSize: 18,
                  ),
                ),
                CategoryListView(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Products",
                      style: CustomTextStyle.TitilliumWebBold16.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    SvgPicture.asset(AppAssetes.arrowProducts)
                  ],
                ),
            
              
              ],
            ),
          ),
            ),
                ProductsListView(),
          ]
          ,
        ),
      ),
    );
  }
}
