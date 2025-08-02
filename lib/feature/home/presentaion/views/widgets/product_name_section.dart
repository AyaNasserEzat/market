import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class ProductNameSection extends StatelessWidget {
  const ProductNameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "category name",
              style: CustomTextStyle.bold19.copyWith(fontSize: 16),
            ),
           
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "product name",
              style: CustomTextStyle.bold19.copyWith(fontSize: 23),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: "KD 12.00", style: CustomTextStyle.bold19),
                  TextSpan(
                    text: "KD 14.00",
                    style: CustomTextStyle.regular.copyWith(
                      fontSize: 17,
                      color: AppColor.pink,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit...",style: CustomTextStyle.regular,),
         Text("Sell Per: Kartoon", style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
