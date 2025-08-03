import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';


class SallerCard extends StatelessWidget {
  const SallerCard({super.key, required this.isOpen});
final bool isOpen;
  @override
  Widget build(BuildContext context) {
    return  Card
    (
      color: AppColor.white,
      child: ListTile(
        trailing: Image.asset(AppAssetes.offer),
        title:Text("saller name",style: CustomTextStyle.bold19,) ,
        leading: Container(
  decoration: BoxDecoration(
border: Border.all(color: AppColor.gray,width: 2.w),
shape: BoxShape.circle,
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.15),
        blurRadius: 20,
        spreadRadius: 1,
        offset: Offset(0, 10),
      )
    ]
  ),
          child: Image.asset("assets/images/fruits.png",fit: BoxFit.fill,),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Delvery :40to60",style: CustomTextStyle.regular,
            ),
              Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(backgroundColor: AppColor.gray2, radius: 3),
                      Text(
                        isOpen ? " Open  " : " closed  ",
                        style: isOpen?CustomTextStyle.regular.copyWith(color: AppColor.green3): CustomTextStyle.regular.copyWith(color: AppColor.red),
                      ),
                      CircleAvatar(backgroundColor: AppColor.gray2, radius: 3),
                      Text("  4.5  ", style: CustomTextStyle.regular.copyWith(color: AppColor.blue)),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}