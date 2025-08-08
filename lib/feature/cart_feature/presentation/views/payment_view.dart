import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/applay_cupon_row.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/now_container.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/order_details_section.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/payment_section.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Expanded(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Cupon Code",style: CustomTextStyle.TitilliumWebBold16,),
              NowContainer(child: ApplayCuponRow()),
                    Text("Order Details ",style: CustomTextStyle.TitilliumWebBold16,),
                    OrderDetailsSection(),
                      Text("Payment",style: CustomTextStyle.TitilliumWebBold16,),
                      PaymentSection()
            
          
            ],
          ),
        ),
      ),
    );
  }
}