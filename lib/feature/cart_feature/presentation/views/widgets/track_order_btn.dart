import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class TrackOrderBtn extends StatelessWidget {
  const TrackOrderBtn({super.key});

  @override
  Widget build(BuildContext context) {
  final screenHeight=MediaQuery.of(context).size.height;
    final screenWidth=MediaQuery.of(context).size.height;
    return  InkWell(
      onTap: () {
        context.push("/orderTraking");
      },
      child: Container(
       width: 347,
        height: 51,
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.green),
          borderRadius: BorderRadius.circular(28),
          color: AppColor.white
        ),
        child: Center(child: Text("track order",style: CustomTextStyle.TitilliumWebBold16,)),
      ),
    );
  }
}