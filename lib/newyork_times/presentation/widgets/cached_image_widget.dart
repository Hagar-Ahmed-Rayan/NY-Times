import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RoundedCachedImageWidget extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final BorderRadius borderRadius;

  RoundedCachedImageWidget({
    required this.imageUrl,
    this.width = 100.0,
    this.height = 100.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(12.0)),
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: BoxFit.cover,
        placeholder: (context, url) => Center(
          child: CircularProgressIndicator(),
        ),
        errorWidget: (context, url, error) => Center(
          child: Icon(
            Icons.error_outline,
            color: Colors.red,
            size: 48.0,
          ),
        ),
      ),
    );
  }
}
