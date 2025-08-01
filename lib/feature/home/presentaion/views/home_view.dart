import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_container.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_small_containr.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.appTitle,
          style: CustomTextStyle.logo.copyWith(fontSize: 18),
        ),
        actions: [Icon(Icons.search), Icon(Icons.filter)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(color: AppColor.gray),
            Image.asset("assets/images/home.png", width: 400, height: 130),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                CustomSmallContainr(image: "assets/images/image 6.png"),
                CustomSmallContainr(image: "assets/images/image 5.png"),
                CustomSmallContainr(image: "assets/images/image 7.png"),
                CustomSmallContainr(image: "assets/images/image 8.png"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Saller"),
                Text("Show All", style: TextStyle(color: AppColor.blue)),
              ],
            ),
           CustomContainer()
          ],
        ),
      ),
    );
  }
}
