import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/add_to_cart_btn.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/product_name_section.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/select_weight_section.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/stack_section.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold
    (
      appBar:  AppBar
    (
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () { context.pop(); },),
      title: Text("product name",style: CustomTextStyle.poppins,),
      centerTitle: true,
      actions: [
Icon(        Icons.favorite),

      ],
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 10,
        children: [
          StackSection(),
          ProductNameSection(),
          SelectWeightSection(),
          SelectWeightSection(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AddToCartBtn()
            ],
          )
        ],
      ),
    ),

    );
  }
}