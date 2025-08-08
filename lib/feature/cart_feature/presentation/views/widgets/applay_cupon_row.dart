
import 'package:flutter/widgets.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/custom_small_btn.dart';

class ApplayCuponRow extends StatelessWidget {
  const ApplayCuponRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row
    (
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Do you have any cuopon code?",style: CustomTextStyle.regularTitilliumWeb16,),
      CustomSmallBtn(text: "applay", ontap: (){})
      ],
    );
  }
}