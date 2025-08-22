import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.icon, required this.text, required this.color, required this.widget, required this.textcolor,});
 final IconData icon;
 final String text;
 final Color color;
 final Widget widget;
 final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        
        height: 51,
        width: 347,
        decoration: BoxDecoration(
          color: color,

          borderRadius: BorderRadius.circular(26),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 4,
              color:  Color(0x40000000)
            )
          ]
        ),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Container(
          child: widget,
        ),
            SizedBox(width: 10.w,),
            Text(text,style: TextStyle(color: textcolor),)
          ],
        ),
      ),
    );
  }


}