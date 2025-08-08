import 'package:flutter/widgets.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/adress_details_container.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/new_address_row.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/now_container.dart';

class DeliveryAddressView extends StatelessWidget {
  const DeliveryAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column
      (
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Select Delivery Address",style: CustomTextStyle.TitilliumWebBold16,),
          NowContainer(child: NewAddressRow(),),
          AdressDetailsContainer()
        ],
      ),
    );
  }
}