import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomgategoryContainr extends StatelessWidget {
  const CustomgategoryContainr({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
       border: Border.all(color:  Colors.grey.shade100),
         boxShadow: [
           BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 1,
      
        ),
         ]
        ),
        width: 80.w,
        height: 80.h,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(23),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
