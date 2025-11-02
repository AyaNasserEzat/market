import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/data/models/product_model.dart';

class ProductNameSection extends StatelessWidget {
  const ProductNameSection({super.key, required this.productModel});
final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
             productModel.nameCategoryEn?? "Category Name",
              style: CustomTextStyle.TitilliumWebBold16.copyWith(fontSize: 16.sp),
            ),
            SizedBox(width: 220.w,),
                       Text(
              "price ",
              style: CustomTextStyle.regularTitilliumWeb.copyWith(fontSize: 14.sp),
            ),
         
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
            productModel.nameEn??  "product name",
              style: CustomTextStyle.titilliumWebBoldBlack19.copyWith(fontSize: 24.sp),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: "${productModel.price}  ", style: CustomTextStyle.TitilliumWebBold16.copyWith(fontSize: 20,color: AppColor.grey65)),
                  TextSpan(
                    text: "${productModel.price}",
                    style: CustomTextStyle.regular.copyWith(
                      fontSize: 17.sp,
                      color: AppColor.pink,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: AppColor.pink
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(productModel.detailsEn??
          "Lorem ipsum dolor sit amet, consectetur adipiscing Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.elit...",style: CustomTextStyle.regular,),
        SizedBox(height: 10,),
         Text("Sell Per: ${productModel.unitEn}", style: CustomTextStyle.regularTitilliumWeb16),
      ],
    );
  }
}
