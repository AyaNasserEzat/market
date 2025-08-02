import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_container.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_category_containr.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.appTitle,
          style: CustomTextStyle.poppins,
        ),
        actions: [Icon(Icons.search,color: AppColor.green,size: 40,), Icon(Icons.tune_sharp,color: AppColor.green,size: 40,)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0,right: 10),
          child: Column(
            children: [
              Divider(color: AppColor.gray),
              Image.asset(AppAssetes.homeImage, width: 400, height: 130),
              SizedBox(height: 10),
              SizedBox(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomgategoryContainr(image: "assets/images/image 6.png"),
                    CustomgategoryContainr(image: "assets/images/image 5.png"),
                    CustomgategoryContainr(image: "assets/images/image 7.png"),
                    CustomgategoryContainr(image: "assets/images/image 8.png"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sallers",style: CustomTextStyle.bold19,),
                    Text("Show all", style: CustomTextStyle.arial),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 400,
              //   child: ListView.separated(
              //     itemCount: 4,
              //     itemBuilder: (context,index){
              //     return   CustomContainer(isOpen: true,);
              //   }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 15,); },),
              // )
           CustomContainer(isOpen: true,)
            ],
          ),
        ),
      ),
    );
  }
}
