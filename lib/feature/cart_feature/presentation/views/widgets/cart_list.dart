import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/cart_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
  delegate: SliverChildBuilderDelegate(
    (BuildContext context, int index) {
      return Padding(
        padding: EdgeInsets.all(8.0), // padding لكل عنصر
        child: const CartItem(),
      );
    },
    childCount: 6, // عدد العناصر
  ),
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 1,       // عدد الأعمدة
    crossAxisSpacing: 10,    // مسافة أفقية بين العناصر
    mainAxisSpacing: 10,     // مسافة رأسية بين العناصر
    childAspectRatio: 8/3,   // نسبة العرض للارتفاع
  ),
)
;
    //  SliverList(
    //   delegate: SliverChildBuilderDelegate(
    //     (BuildContext context, int index) {
    //       return Padding(
    //         padding: EdgeInsets.only(bottom: 10.h),
    //         child: const CartItem(),
    //       );
    //     },
    //     childCount: 3,
    //   ),
    // );
  }
}
