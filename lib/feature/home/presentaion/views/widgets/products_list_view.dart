
import 'package:flutter/material.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_product_container.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return    SliverList.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CustomProductContainer();
            },
            separatorBuilder: (context, index) =>
                SizedBox(height: screenHeight * .02),
          );
  }
}