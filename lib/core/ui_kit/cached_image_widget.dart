import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CachedImageWidget extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final BoxFit? fit;

  const CachedImageWidget(
      {required this.image, this.height, this.fit, this.width});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      fit: fit,
      height: height,
      width: width,
      maxHeightDiskCache: 300,
      memCacheHeight: 300,
      errorWidget: (context, url, error) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        padding: const EdgeInsets.all(8),
        child: const Icon(
          CupertinoIcons.exclamationmark,
          color: Colors.red,
        ),
      ),
    );
  }
}
