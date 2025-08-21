import 'package:flutter/material.dart';

import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';

import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/cart_list.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/cart_view_layout.dart';

import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/checkout_section.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/prossed_to_checkout_section.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandScape=MediaQuery.of(context).orientation==Orientation.landscape;
    return  SafeArea(
      child: Scaffold(
        appBar:  AppBar(
                  scrolledUnderElevation: 0,  
          surfaceTintColor: Colors.transparent,
        
          centerTitle: true,
          title: Text(
            AppStrings.basket,
            style: CustomTextStyle.poppins,
          ),
       
      ),
      body: 
       CustomScrollView(
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