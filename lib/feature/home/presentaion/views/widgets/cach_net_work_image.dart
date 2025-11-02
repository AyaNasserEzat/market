import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class CachNetWorkImage extends StatelessWidget {
  const CachNetWorkImage({super.key, required this.img});
final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 85,
      width: 85,
      decoration: BoxDecoration(
        color: AppColor.white,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(blurRadius: 2, color: AppColor.greyShaded500)],
      ),
      child: CachedNetworkImage(
  imageUrl: 'https://fruits.sys-web.net/uploads/$img',
  imageBuilder: (context, imageProvider) => Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        image: imageProvider,
        fit: BoxFit.cover,
      ),
    ),
  ),
  placeholder: (context, url) => const Center(
    child: CircularProgressIndicator(strokeWidth: 2),
  ),
  errorWidget: (context, url, error) => const Icon(Icons.error),
)

    );
  }
}