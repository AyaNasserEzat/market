import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/filter_seaction.dart';
import 'package:pure_soft/feature/order_feature/presentaion/views/widgets/custom_btn_dailog.dart';

class FilterDailog extends StatelessWidget {
  const FilterDailog({super.key});

  @override
  Widget build(BuildContext context) {
    return  Dialog(
      backgroundColor: AppColor.white,
child: 
     Padding(
       padding: const EdgeInsets.all(16.0),
       child: Column(
        spacing: 5,
       mainAxisSize: MainAxisSize.min,
            children: [

  FilterSeaction(),

           CustomBtnDailog(text: AppStrings.applyfilter,),
            ],
          ),
     ),
  

      );
  
  }
}