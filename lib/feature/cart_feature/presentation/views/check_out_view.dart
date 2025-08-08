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
  const CheckOutView({super.key});

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
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            spacing: 15,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Row(
                  children: [
                    CustomDashLine(text: "Delivery Time", index: 1),
                    CustomDashLine(text: "Delivery Address", index: 2),
                    CustomDashLine(text: "Payment", index: 3),
                  ],
                ),
              ),
              Divider(height: 1, color: AppColor.gray),
              
            //  DeliveryTimeView(),
           // DeliveryAddressView(),
           PaymentView(),
             // Spacer(),
              CustomButton(onpressed: (){
          
              }, text: "Continue")
          
            ],
          ),
        ),
      ),
    );
  }
}

class DashLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = AppColor.gray
          ..strokeWidth = 1;
    const dashWidth = 6;
    const dashSpace = 3;
    double start = 0;
    while (start < size.width) {
      canvas.drawLine(Offset(start, 0), Offset(start + dashWidth, 0), paint);
      start += dashSpace + dashWidth;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
