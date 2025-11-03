import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BannerImg extends StatelessWidget {
  const BannerImg({super.key, required this.img});
final String img;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(13),
      child: CachedNetworkImage(
        imageUrl: 'https://fruits.sys-web.net/uploads/$img',
  //width: double.infinity,

        imageBuilder: (context, imageProvider) => Container(
      decoration: BoxDecoration(
      
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
      ),
    );
  }
}