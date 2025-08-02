import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class CustomProductContainer extends StatelessWidget {
  const CustomProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        context.push("/productDetails");
      },
      child: Container(
          width: 412,
          height: 104,
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
                CircleAvatar(radius: 35),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Product Name ",style: CustomTextStyle.bold19,),
                        
                 
                      ],
                    ),
                    Row(
                      children: [
                      Text("12.00 KD  "),
                        Text(
                          " 14.00 KD",
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
                child: Center(child: Text("up to 50 off%",style: CustomTextStyle.simebold12,)),
               )
                  ],
                ),
                SizedBox(width: 15,),
                Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
                  children: [
      CircleAvatar(
        backgroundColor: AppColor.green,
        radius: 30,
        child: Image.asset("assets/images/34 Shopping basket, add, Buy Shop.png"))
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}