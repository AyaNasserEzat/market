
import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class OrderDetalisSection extends StatelessWidget {
  const OrderDetalisSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "your order code: ",
                  style: CustomTextStyle.regular.copyWith(fontSize: 18),
                ),
                TextSpan(
                  text: "#5677822",
                  style: CustomTextStyle.regularBold.copyWith(fontSize: 18),
                ),
              ],
            ),
          ),
          Text("3 item - 34 KD",style: CustomTextStyle.regular.copyWith(fontSize: 18),),
                    Text("Payment method : Cash",style: CustomTextStyle.regular.copyWith(fontSize: 18),)
       
      ],
    );
  }
}