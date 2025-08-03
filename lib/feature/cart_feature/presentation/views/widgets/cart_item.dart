import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          width: 412.w,
          height: 115.h,
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
                
                width: 102.w,
                height: 22.h,
                decoration: BoxDecoration(
                  color: AppColor.pink,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Center(child: Text("up to 50 off%",style: CustomTextStyle.simebold12,)),
               )
                  ],
                ),
                SizedBox(width: 15.w,),
                Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever),),
 Container(
                
                width: 126.w,
                height: 29.h,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: .2,
                    color: AppColor.gray
                  ),
                  boxShadow: [
         // ignore: deprecated_member_use
         BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 2),
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                
                       IconButton(onPressed: (){}, icon: Icon(Icons.remove,color: AppColor.gray,size: 16,)),
                    Text("1"),
                              IconButton(onPressed: (){}, icon: Icon(Icons.add,color: AppColor.gray,size: 15,
                              )),
                
                  ],
                ),
               )

                  ],
                ),
              ],
            ),
            
          ),
        );
  }
}