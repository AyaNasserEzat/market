import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:pure_soft/feature/order_feature/presentaion/views/widgets/order_detalis_section.dart';


class OrderTrakingView extends StatelessWidget {
  const OrderTrakingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
                title: Text(AppStrings.orderTraking, style: CustomTextStyle.poppins),
        centerTitle: true,
        leading: IconButton(onPressed: () {
      
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        spacing: 10,
        children: [
          OrderDetalisSection(),
          CustomButton(onpressed: (){}, text: AppStrings.confirm),
                CustomButton(onpressed: (){}, text: AppStrings.cancleOrder,color: AppColor.red,),
          ],
      ),
    );
  }
}
