import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/category_list_view.dart';

import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_product_container.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/products_list_view.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/saller_card.dart';

class SallerProductView extends StatelessWidget {
  const SallerProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
              SallerCard(isOpen: true),
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
    );
  }
}
