import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/deliery_time_check_container.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/select_delivery_time_container.dart';

class NowTimeRow extends StatelessWidget {
  const NowTimeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Now",style: CustomTextStyle.TitilliumWebBold16.copyWith(color: AppColor.black),),
            InkWell(
              onTap: () {
                
              },
              child: DelieryTimeCheckContainer()
            )
          ],
        );
  }
}