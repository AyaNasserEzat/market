import 'package:flutter/material.dart';

import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/data/models/vendor.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/cach_net_work_image.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_circle_container.dart';

class SallerCard extends StatelessWidget {
  const SallerCard({super.key, required this.vendor});
  final Vendor vendor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: AppColor.grey65.withOpacity(0.25),
            blurRadius: 4,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          spacing: 10,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
     CachNetWorkImage(img: vendor.img),

            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(vendor.nameEn?? "saller name", style: CustomTextStyle.TitilliumWebBold16),
                        SizedBox(width:  MediaQuery.of(context).size.width>600? MediaQuery.of(context).size.width*.60: MediaQuery.of(context).size.width*.33 ,),
                Image.asset(AppAssetes.offer,),
                  ],
                ),
            
                Text(
                  "Delivery : 40 to 60 Min",
                  style: CustomTextStyle.regularTitilliumWeb,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(backgroundColor: AppColor.gray2, radius: 3),
                    Text(
                      vendor.isOpened=="Y" ? " Open  " : " closed  ",
                      style:
                            vendor.isOpened=="Y"
                              ? CustomTextStyle.regular.copyWith(
                                color: AppColor.green3,
                              )
                              : CustomTextStyle.regular.copyWith(
                                color: AppColor.red,
                              ),
                    ),
                    CircleAvatar(backgroundColor: AppColor.gray2, radius: 3),
                    Text(
                      " ${vendor.rate}  ",
                      style: CustomTextStyle.regular.copyWith(
                        color: AppColor.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
