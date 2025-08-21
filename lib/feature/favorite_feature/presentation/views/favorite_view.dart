
import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/favorite_feature/presentation/views/widgets/favorit_item.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
              appBar: AppBar(
                                scrolledUnderElevation: 0,  
          surfaceTintColor: Colors.transparent,
        
                  title: Text(AppStrings.favorit, style: CustomTextStyle.poppins),
          centerTitle: true,
          leading: IconButton(onPressed: () {
        
          }, icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FavoritItem()
            ],
          ),
        ),
      ),
    );
  }
}