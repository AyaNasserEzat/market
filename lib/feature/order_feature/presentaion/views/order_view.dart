
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/order_feature/presentaion/views/widgets/order_item.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
  slivers: [
    SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.arrow_back_ios) ,onPressed: () {
          context.pop();
        },),
            Text("My Orders", style:CustomTextStyle.poppins,textAlign: TextAlign.center,),
          ],
        ),
      ),
    ),
    SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return OrderItem();
        },
        childCount: 1,
      ),
    ),
  ],
)

    );
  }
}