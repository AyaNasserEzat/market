import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';


class CustomButton extends StatelessWidget {
   CustomButton({
    super.key,
    required this.onpressed,
    required this.text,
    this.color = AppColor.green,
    this.width=    347,
    this.height=51
  });
  final VoidCallback onpressed;
  final Color? color;
  final String text;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
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
