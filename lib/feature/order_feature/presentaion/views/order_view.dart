
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/order_feature/data/model/order_stlye_model.dart';
import 'package:pure_soft/feature/order_feature/presentaion/views/widgets/order_item.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: CustomScrollView(
        slivers: [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.arrow_back_ios,) ,onPressed: () {
      if (context.canPop()) {
        context.pop();
      }
          },),
          SizedBox(width: 50,),
              Text("My Orders", style:CustomTextStyle.poppins,textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return OrderItem(orderStlyeModel: OrderStlyeModel.orderStlyeList[index],);
          },
          childCount: OrderStlyeModel.orderStlyeList.length,
        ),
      ),
        ],
      )
      
      ),
    );
  }
}