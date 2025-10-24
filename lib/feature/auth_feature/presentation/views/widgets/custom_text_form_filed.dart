import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({super.key, required this.text,  this.controller});
  final String text;
  final TextEditingController ?controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(28),

        boxShadow: [
          BoxShadow(blurRadius: 2, color: AppColor.black.withOpacity(.2)),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,

         
        ),
      ),
    );
  }
}
