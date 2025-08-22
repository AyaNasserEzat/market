import 'package:flutter/widgets.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_container_home.dart';


class GridViewLayout extends StatelessWidget {
  const GridViewLayout({super.key});

  @override
  Widget build(BuildContext context) {

        final double screenWidth = MediaQuery.of(context).size.width;

    // تحديد نوع الجهاز
    bool isMobile = screenWidth < 600;
    bool isTablet = screenWidth >= 600 && screenWidth < 1024;
    bool isDesktop = screenWidth >= 1024;

    // عدد الأعمدة
    int crossAxisCount;
    double aspectRatio;

    if (isMobile) {
      crossAxisCount = 1;
      aspectRatio = 10/3; // AspectRatio للموبايل
    } else if (isTablet) {
      crossAxisCount = 2;
      aspectRatio = 40/12; // AspectRatio للتابلت
    } else {
      crossAxisCount = 3;
      aspectRatio = 63/18; // AspectRatio للديسكتوب
    }
    return  SliverGrid(
  delegate: SliverChildBuilderDelegate(
    (context, index) {
      return CustomContainerHome(isOpen: true);
    },
    childCount: 5, // عدد العناصر
  ),
  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: crossAxisCount, // عدد الأعمدة
    crossAxisSpacing: 5, // المسافة بين الأعمدة
    mainAxisSpacing: 5, // المسافة بين الصفوف
    childAspectRatio:  aspectRatio // النسبة بين العرض والارتفاع
  ),
);
  }
}