import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/category_list_view.dart';

import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_container.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_product_container.dart';

class SallerProductView extends StatelessWidget {
  const SallerProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: Text(
          AppStrings.appTitle,
          style: CustomTextStyle.poppins,
        ),
        actions: [Icon(Icons.search,color: AppColor.green,size: 40,),]
    ),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomContainer(isOpen: true),
            Text("Categories",style: CustomTextStyle.bold19,),
            SizedBox(
              height: 130,
              
              child: CategoryListView()
            ),
             Text("Products",style: CustomTextStyle.bold19,),
             CustomProductContainer()
          ],
        ),
      ),
    ),);
  }
}