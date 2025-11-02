import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/data/models/product_model.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/cach_net_work_image.dart';

class CustomProductContainer extends StatelessWidget {
  const CustomProductContainer({super.key, required this.productModel});
final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        context.push("/productDetails",extra: productModel);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0,left: 8),
        child: Container(
        
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 2),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                spacing: 10,
                children: [
CachNetWorkImage(img: productModel.img??""),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Expanded(child: Text(productModel.nameEn?? "Product Name ",style: CustomTextStyle.TitilliumWebBold16.copyWith(color: AppColor.black,overflow: TextOverflow.ellipsis),)),
                            
                     
                          ],
                        ),
                        Row(
                          children: [
                          Text("${productModel.price.toString()}  ",style:  CustomTextStyle.regularTitilliumWeb,),
                            Text(
                              "${productModel.price.toString()}",
                              style: CustomTextStyle.regular.copyWith(decoration: TextDecoration.lineThrough,color: AppColor.gray),
                            ),
                          ],
                        ),
                              
                                     Container(
                    
                    width: 102,
                    height: 22,
                    decoration: BoxDecoration(
                      color: AppColor.pink,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(child: Text("up to ${productModel.discount}% off",style: CustomTextStyle.simebold12,)),
                                     )
                      ],
                    ),
                  ),
         //Spacer(),
                  CircleAvatar(
                    backgroundColor: AppColor.green,
                    radius: 25,
                    child: Image.asset(AppAssetes.shop)),
                ],
              ),
            ),
          ),
      ),
    );
  }
}