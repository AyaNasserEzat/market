import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class ProfileItemListTile extends StatelessWidget {
  const ProfileItemListTile({
    super.key,required this.imageurl,required this.title,required this.onPressed
  });
  final String imageurl;
final String title;
final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        leading:SvgPicture.asset(imageurl) ,
        title: Text(title),
        trailing: IconButton(icon: Icon( Icons.arrow_forward_ios,color: AppColor.gray,size: 15,),onPressed:onPressed ,),
      ),
    );
  }
}
