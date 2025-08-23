import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/services/local_notification.dart';
import 'package:pure_soft/core/utils/app_assets.dart' show AppAssetes;
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/custom_button.dart';
import 'package:pure_soft/feature/profile/presentation/views/widgets/profil_item_list_tile.dart';
import 'package:pure_soft/feature/profile/presentation/views/widgets/profile_image.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Divider(color: AppColor.gray, thickness: 1),
          SizedBox(height: 25.h),
          ProfileImage(),
          SizedBox(height: 16.h),
          Text("Welcom, Fruit Market", style: CustomTextStyle.bold19),
          SizedBox(height: 24.h),
          CustomButton(onpressed: () {}, text: 'Login'),
         
         ProfileItemListTile(
      imageurl: AppAssetes.iconUser,
      title: AppStrings.profile,
      onPressed: () {
        context.push('/updateProfile');
      },
    ),
    ProfileItemListTile(
      imageurl: AppAssetes.selectedOrder,
      title: AppStrings.myOrder,
      onPressed: () {
        context.push("/order");
      },
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
      onPressed: () {
        context.push("/support");
      },
    ),
    ProfileItemListTile(
      imageurl: AppAssetes.terms,
      title: AppStrings.terms,
      onPressed: () {
        context.push("/termAndCondation");
      },
    ),
    ProfileItemListTile(
      imageurl: AppAssetes.about,
      title: AppStrings.aboutUs,
      onPressed: () {
     
      },
    ),
    
         
         
        ],
      ),
    );
  }
}
