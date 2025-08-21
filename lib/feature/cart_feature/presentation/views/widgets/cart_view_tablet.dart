import 'package:flutter/widgets.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/cart_item.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/checkout_section.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/dash_line.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/prossed_to_checkout_section.dart';

class CartViewTablet extends StatelessWidget {
  const CartViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width*.50,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return CartItem();
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 19);
            },
            itemCount: 3,
          ),
        ),
// خط عمودي
CustomPaint(
  size: Size(1, MediaQuery.of(context).size.height-8),
  painter: DashLine(isVertical: true),

),
Expanded(
  child: Column(
    children: [
      CheckoutSection(),
      SizedBox(height: 80,),
      ProssedToCheckoutSection()
  
    ],
  ),
),


      ],
    );
  }
}
