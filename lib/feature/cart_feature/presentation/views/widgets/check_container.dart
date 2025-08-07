import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class CheckContainer extends StatefulWidget {
  const CheckContainer({super.key});

  @override
  State<CheckContainer> createState() => _CheckContainerState();
}

class _CheckContainerState extends State<CheckContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return   Container(
                  width: 40.w,
                  height: 38.h,
                  decoration: BoxDecoration(
                    color: AppColor.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColor.black,)
                  ),
                  child: Icon(Icons.check,color: AppColor.white,size: 16,),
                );
  }
}