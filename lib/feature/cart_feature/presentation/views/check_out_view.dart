import 'package:flutter/material.dart';

import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/delivery_address_view.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/delivery_time_view.dart';

import 'package:pure_soft/feature/cart_feature/presentation/views/payment_view.dart';

import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/custom_dash_line.dart';


class CheckOutView extends StatefulWidget {
   CheckOutView({super.key});
 int currentIndex=0;
  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: Text(AppStrings.checkOutTitle, style: CustomTextStyle.poppins),
      ),
      body: Column(
        spacing: 15,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                CustomDashLine(text: "Delivery Time", index: 0,currentIndex: widget.currentIndex),
                CustomDashLine(text: "Delivery Address", index: 1,currentIndex: widget.currentIndex),
                CustomDashLine(text: "Payment", index: 2,currentIndex: widget.currentIndex,),
              ],
            ),
          ),
          Divider(height: 1, color: AppColor.gray),
        //  changeIndex(widget.currentIndex),
          IndexedStack(
            index: widget.currentIndex,
children: [
         DeliveryTimeView(),
       DeliveryAddressView(),
      PaymentView(),
],
          ),

          
          CustomButton(onpressed: (){
      setState(() {
        if (widget.currentIndex<2) {
      widget.currentIndex=widget.currentIndex+1;
            }
      });
          }, text: widget.currentIndex==2?"place order" :"Continue"),
          SizedBox(height: 20,),
      
        ],
      ),
    );
  }
}



