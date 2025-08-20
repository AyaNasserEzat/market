import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:pure_soft/feature/order_feature/presentaion/views/widgets/cancle_order_dialog.dart';
import 'package:pure_soft/feature/order_feature/presentaion/views/widgets/order_detalis_section.dart';
import 'package:pure_soft/feature/order_feature/presentaion/views/widgets/time_line_list.dart';






class OrderTrakingView extends StatelessWidget {
  const OrderTrakingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        title: Text(AppStrings.orderTraking, style: CustomTextStyle.poppins),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          // Order Details Section
          SliverToBoxAdapter(
            child: OrderDetalisSection(),
          ),

          // Spacing
          SliverToBoxAdapter(child: SizedBox(height: 16)),

          // Timeline list
         TimeLineList(),
          // Spacing
          SliverToBoxAdapter(child: SizedBox(height: 24)),

          // Confirm button
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomButton(
                onpressed: () {},
                text: AppStrings.confirm,
              ),
            ),
          ),

          // Cancel button
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: CustomButton(
                onpressed: () {
                showDialog(context: context, builder: (builder){
return CancleOrderDialog();
                });
                },
                text: AppStrings.cancleOrder,
                color: AppColor.red,
              ),
            ),
          ),

          // Extra spacing at bottom
          SliverToBoxAdapter(child: SizedBox(height: 24)),
        ],
      ),
    );
  }
}
