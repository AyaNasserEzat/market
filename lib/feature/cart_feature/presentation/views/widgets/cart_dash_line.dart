import 'package:flutter/widgets.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/dash_line.dart';

class CartDashLine extends StatelessWidget {
  const CartDashLine({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;
    return       CustomPaint(
      size: Size(screenWidth-8, 8),
      painter: DashLine(),
     );
  }
}