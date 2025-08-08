import 'package:flutter/widgets.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/now_container.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/payment_row.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      spacing: 10,
      children: [
        NowContainer(child: PaymentRow(image: AppAssetes.credit, text: AppStrings.credit),),
        NowContainer(child: PaymentRow(image: AppAssetes.chash, text: AppStrings.cash),),
        NowContainer(child: PaymentRow(image: AppAssetes.knet, text: AppStrings.knet),),
      ],
    );
  }
}