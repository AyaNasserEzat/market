import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:pure_soft/feature/profile/presentation/views/widgets/profil_item_list_tile.dart'
    show ProfileItemListTile;
import 'package:pure_soft/feature/profile/presentation/views/widgets/profile_image.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.appTitle, style: CustomTextStyle.poppins),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(color: AppColor.gray, thickness: 1),
            SizedBox(height: 25),
            ProfileImage(),
            SizedBox(height: 16),
            Text("Welcom, Fruit Market", style: CustomTextStyle.bold19),
            SizedBox(height: 24),
            CustomButton(onpressed: () {}, text: 'Login'),
           
           ProfileItemListTile(
  imageurl: AppAssetes.iconUser,
  title: AppStrings.profile,
  onPressed: () {},
),
ProfileItemListTile(
  imageurl: AppAssetes.selectedOrder,
  title: AppStrings.myOrder,
  onPressed: () {},
),
ProfileItemListTile(
  imageurl: AppAssetes.favorite,
  title: AppStrings.favorite,
  onPressed: () {},
),
ProfileItemListTile(
  imageurl: AppAssetes.language,
  title: AppStrings.language,
  onPressed: () {},
),
ProfileItemListTile(
  imageurl: AppAssetes.support,
  title: AppStrings.support,
  onPressed: () {},
),
ProfileItemListTile(
  imageurl: AppAssetes.terms,
  title: AppStrings.terms,
  onPressed: () {},
),
ProfileItemListTile(
  imageurl: AppAssetes.about,
  title: AppStrings.aboutUs,
  onPressed: () {},
),

           
           
          ],
        ),
      ),
    );
  }
}
