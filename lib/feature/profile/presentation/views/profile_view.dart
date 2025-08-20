import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/profile/presentation/views/widgets/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                        scrolledUnderElevation: 0,  
        surfaceTintColor: Colors.transparent,
      
        title: Text(AppStrings.appTitle, style: CustomTextStyle.poppins),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: ProfileBody(),
    );
  }
}

