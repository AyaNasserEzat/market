import 'package:flutter/widgets.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class DelieryTimeCheckContainer extends StatelessWidget {
  const DelieryTimeCheckContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                width: 35,
                height: 34,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColor.black,)));
  }
}