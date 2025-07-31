import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onpressed,
    required this.text,
    this.color = AppColor.green,
  });
  final VoidCallback onpressed;
  final Color? color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 347,
      height: 51,
      child: ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          
        ),
        child: Padding(
         padding: EdgeInsets.symmetric(horizontal: 16,vertical: 14),
        
          child: Text(text, style: CustomTextStyle.medianstyle),
        ),
      ),
    );
  }
}
