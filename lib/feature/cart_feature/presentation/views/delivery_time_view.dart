

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/now_container.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/now_time_row.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/select_delivery_time_container.dart';

class DeliveryTimeView extends StatelessWidget {
  const DeliveryTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        
        children: [
      NowContainer(child: NowTimeRow(),),
      SizedBox(height: 25.h,),
      SelectDeliveryTimeContainer(),
      
      
        ],
      
      ),
    );
  }
}