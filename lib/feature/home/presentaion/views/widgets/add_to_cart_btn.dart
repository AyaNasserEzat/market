import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 144,
      height: 38,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          
        ),
        child: Row(
          children: [
            SvgPicture.asset(AppAssetes.bassketIon,width: 28,height: 18,),
            Text("  Add to Cart", style: CustomTextStyle.simebold12),
          ],
        ),
      ),
    );
  }
}