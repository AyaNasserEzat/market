// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pure_soft/core/utils/app_color.dart';

// class CustomgategoryContainr extends StatelessWidget {
//   const CustomgategoryContainr({super.key, required this.image});
//   final String image;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: Container(
//         margin: EdgeInsets.only(left: 10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
// color: AppColor.white,
//           boxShadow: [BoxShadow(color: Color(0x40000000) , blurRadius: 4,offset: Offset(0, 1))],
//         ),
//         width: 110.w,
//         height: 80.h,

//         child: Image.asset(image),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class CustomCategoryContainer extends StatelessWidget {
  const CustomCategoryContainer({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    // معلومات عن حجم الشاشة
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // تحديد نوع الجهاز (Mobile / Tablet / Web)
    bool isTablet = screenWidth >= 600 && screenWidth < 1024;
    bool isWeb = screenWidth >= 1024;

    // تحديد الحجم المناسب بناءً على الجهاز
    double containerWidth;
    double containerHeight;

    if (isWeb) {
      containerWidth = screenWidth * 0.15; // ويب
      containerHeight = screenHeight * 0.12;
    } else if (isTablet) {
      containerWidth = screenWidth * 0.20; // تابلت
      containerHeight = screenHeight * 1;
    } else {
      containerWidth = screenWidth * 0.28; // موبايل
      containerHeight = screenHeight * 0.5;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0x40000000),
              blurRadius: 4,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        width: containerWidth,
        height: containerHeight,
        child: Image.asset(
          image,
         // fit: BoxFit.contain,
        ),
      ),
    );
  }
}

