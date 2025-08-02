import 'package:flutter/material.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_category_containr.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                
                return Column(
                  children: [
                    CustomgategoryContainr(image: "assets/images/fruits.png"),
                    Text("Frutis")
                  ],
                );
              }, separatorBuilder: (context,index){
                return SizedBox(width: 10,);
              }, itemCount: 4);
  }
}