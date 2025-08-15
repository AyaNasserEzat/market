import 'package:flutter/widgets.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/now_container.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/payment_row.dart';
class PaymentSection extends StatefulWidget {
  const PaymentSection({super.key});

  @override
  State<PaymentSection> createState() => _PaymentSectionState();
}

class _PaymentSectionState extends State<PaymentSection> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        NowContainer(
          child: PaymentRow(
            image: AppAssetes.credit,
            text: AppStrings.credit,
            index: 1,
            selectedIndex: currentIndex,
            onSelected: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        NowContainer(
          child: PaymentRow(
            image: AppAssetes.chash,
            text: AppStrings.cash,
            index: 2,
            selectedIndex: currentIndex,
            onSelected: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        NowContainer(
          child: PaymentRow(
            image: AppAssetes.knet,
            text: AppStrings.knet,
            index: 3,
            selectedIndex: currentIndex,
            onSelected: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ],
    );
  }
}
