import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class StackSection extends StatelessWidget {
  const StackSection({super.key, required this.img});
final String img;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

       ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(16),
         child: CachedNetworkImage(
           imageUrl: 'https://fruits.sys-web.net/uploads/$img',
           height: 250,
           width: double.infinity,
          fit: BoxFit.fitWidth,
           placeholder: (context, url) => const Center(
             child: CircularProgressIndicator(strokeWidth: 2),
           ),
           errorWidget: (context, url, error) => const Icon(Icons.error),
         ),
       )
,
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            height: 29,
            width: 135,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Text(
              "10% Off Discount",
              style: CustomTextStyle.regularTitilliumWeb,
            ),
          ),
        ),
      ],
    );
  }
}
