import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashRow extends StatelessWidget {
  const DashRow({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: List.generate(36, (index) {
      return Container(
        width: 6.w,
        height: 1.h,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        color: Colors.grey,
      );
        })),
    );
  }
}