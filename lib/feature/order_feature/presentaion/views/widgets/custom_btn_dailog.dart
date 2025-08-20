import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/custom_small_btn.dart';

class CustomBtnDailog extends StatelessWidget {
  const CustomBtnDailog({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return  Column
    (
      children: [
                 SizedBox(height: 5,),
            SizedBox(
              width: 224,
              height: 44,
              child: CustomSmallBtn( text: text,ontap: () {
                
              },)),
            
            TextButton(onPressed: (){
              context.pop();
            }, child: Text(AppStrings.close,style: CustomTextStyle.regular,))
           
      ],
    );
  }
}