import 'package:flutter/material.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/cart_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return CartItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10,);
        },
        itemCount: 2,
      ),
    );
  }
}
