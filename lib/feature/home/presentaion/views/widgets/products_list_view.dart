
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pure_soft/feature/home/presentaion/view_models/vendor_cubit.dart/vendor_cubit.dart';
import 'package:pure_soft/feature/home/presentaion/view_models/vendor_cubit.dart/vendor_state.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_product_container.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
  return BlocBuilder<VendorCubit, VendorState>(
      builder: (context, state) {
        if (state is VendorLoading) {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        } else if (state is VendorProductsError) {
          return SliverToBoxAdapter(
            child: Center(child: Text(state.message ?? 'حدث خطأ ما')),
          );
        } else if (state is VendorProductsSuccess) {
          final products = state.vendor;
          if (products.isEmpty) {
            return const SliverToBoxAdapter(
              child: Center(child: Text('لا توجد منتجات حالياً')),
            );
          }
          return SliverList.separated(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = state.vendor[index];
              return CustomProductContainer(productModel: product);
            },
            separatorBuilder: (context, index) =>
                SizedBox(height: screenHeight * .02),
          );
        }

        // الحالة الافتراضية (مثلاً أول مرة قبل تحميل)
        return const SliverToBoxAdapter(
          child: SizedBox.shrink(),
        );
      },
    );
  }
}