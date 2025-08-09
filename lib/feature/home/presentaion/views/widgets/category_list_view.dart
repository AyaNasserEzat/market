import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/category.dart';


class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                
                return Column(
                  spacing: 5.dm,
                  children: [
                    //CustomgategoryContainr(image: "assets/images/fruits.png"),
                    Category(image: "assets/images/fruits.png"),
                    Text("Frutis",style: CustomTextStyle.regularInter,)
                  ],
                );
              }, separatorBuilder: (context,index){
                return SizedBox(width: 10.w,);
              }, itemCount: 4);
  }
}