import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/filter_dailog.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:             IconButton(icon: Icon(Icons.arrow_back_ios,) ,onPressed: () {
if (context.canPop()) {
  context.pop();
}
        },),
        scrolledUnderElevation: 0,  
        surfaceTintColor: Colors.transparent,
        title: Text(AppStrings.appTitle, style: CustomTextStyle.poppins),
        actions: [

          InkWell(
            onTap: () {
              showDialog(context: context, builder: (context){
                return FilterDailog();
              });
            },
            child: SvgPicture.asset(AppAssetes.filterIcon, width: 25, height: 35)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                
                decoration: InputDecoration(
                  prefix: Icon(Icons.search,color: AppColor.gray,),
                  hintText: "What are you looking for",
                  fillColor: AppColor.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
           
                    
                  ),
                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
        
                   
                  ),
                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
             
                   
                  )
                ),
                
              ),
            )
          ],
        ),
      ),
    );
  }
}