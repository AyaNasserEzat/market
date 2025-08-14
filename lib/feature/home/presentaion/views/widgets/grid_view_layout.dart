import 'package:flutter/widgets.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_container.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/grid_view_container.dart';



class GridViewLayout extends StatelessWidget {
  const GridViewLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverGrid(
  delegate: SliverChildBuilderDelegate(
    (context, index) {
      return GridViewContainer(isOpen: true);
    },
    childCount: 5, // عدد العناصر
  ),
  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // عدد الأعمدة
    crossAxisSpacing: 5, // المسافة بين الأعمدة
    mainAxisSpacing: 5, // المسافة بين الصفوف
    childAspectRatio:  1/.5 // النسبة بين العرض والارتفاع
  ),
);
  }
}