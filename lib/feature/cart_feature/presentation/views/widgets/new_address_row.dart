import 'package:flutter/material.dart';

import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class NewAddressRow extends StatelessWidget {
  const NewAddressRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Text("Add New Address",style: CustomTextStyle.TitilliumWebBold16.copyWith(color: AppColor.black),),
           Icon(Icons.add,color: AppColor.gray,size: 30,)
         ],
       );
  }
}