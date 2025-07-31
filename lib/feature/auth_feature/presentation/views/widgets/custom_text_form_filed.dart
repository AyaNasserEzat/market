import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';


class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        hintText:  text,
        
    
        border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.gray),
          borderRadius: BorderRadius.all(Radius.circular(28))
        ),
        focusedBorder:OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.gray),
          borderRadius: BorderRadius.all(Radius.circular(28))
        ),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.gray),
          borderRadius: BorderRadius.all(Radius.circular(28))
        ), 
        
      ),
    );
  }
}