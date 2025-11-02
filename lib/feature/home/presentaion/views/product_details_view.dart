import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/data/models/product_model.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/add_to_cart_btn.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/product_name_section.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/select_weight_section.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/stack_section.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.productModel});
final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return  Scaffold
    (
      appBar:  AppBar
    (
                      scrolledUnderElevation: 0,  
        surfaceTintColor: Colors.transparent,
      
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () { context.pop(); },),
      title: Text("product name",style: CustomTextStyle.poppins,),
      centerTitle: true,
      actions: [
SvgPicture.asset(AppAssetes.favorite,width: 25,),
SizedBox(width: 10,)


      ],
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [
            StackSection(),
            ProductNameSection(productModel: productModel,),
            SelectWeightSection(),
            SelectWeightSection(),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AddToCartBtn()
              ],
            )
          ],
        ),
      ),
    ),

    );
  }
}