import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/cart_item.dart';

class CartViewLayout extends StatelessWidget {
  const CartViewLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView
    (
      slivers: [
         // Grid View
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return CartItem();
            },
            childCount: 20, // عدد العناصر
          ),
       gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // عدد الأعمدة
    crossAxisSpacing: 5, // المسافة بين الأعمدة
    mainAxisSpacing: 5, // المسافة بين الصفوف
    childAspectRatio:  1/.5 // النسبة بين العرض والارتفاع
  ),
        ),
      ],
    );

  
  }
}