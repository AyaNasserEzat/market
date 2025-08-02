import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class StackSection extends StatelessWidget {
  const StackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack
    (
      children: [
Container(

  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
      color: AppColor.gray,
  ),
  width: 388,height: 232,
  child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset('assets/images/fruits.png',fit: BoxFit.fill,), // بدليه بالصورة المناسبة
          ),
),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            height: 29,
            width: 120,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppColor.pink,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Text(
              "10% Off Discount",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ),

      ],
    );
  }
}