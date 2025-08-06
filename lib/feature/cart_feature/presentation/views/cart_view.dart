import 'package:flutter/material.dart';

import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/cart_list.dart';

import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/checkout_section.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/prossed_to_checkout_section.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: Text(
          AppStrings.basket,
          style: CustomTextStyle.poppins,
        ),
 
    ),
    body:  Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
      const CartListView(), 
        SliverToBoxAdapter(child: SizedBox(height: 150)),
      SliverToBoxAdapter(child: CheckoutSection()),
      SliverToBoxAdapter(child: SizedBox(height: 30)),
      SliverToBoxAdapter(child: ProssedToCheckoutSection()),
        ],
      ),
    ),
    );
  }
}