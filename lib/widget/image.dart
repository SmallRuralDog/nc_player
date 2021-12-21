import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class MAvatar extends StatelessWidget {
  const MAvatar(
    this.url, {
    Key? key,
    this.radius = 0,
    this.size = 35,
  }) : super(key: key);
  final String url;
  final double radius;
  final double size;

  @override
  Widget build(BuildContext context) {
    return MImage(
      url,
      width: size,
      height: size,
      radius: radius,
    );
  }
}

class MImage extends StatelessWidget {
  const MImage(
    this.url, {
    Key? key,
    this.radius = 0,
    required this.width,
    required this.height,
    this.boxFit = BoxFit.cover,
  }) : super(key: key);

  final String url;
  final double radius;
  final double width;
  final double height;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      fit: boxFit,
      placeholder: (context, url) {
        return const Center(
          child: Icon(
            Icons.image,
            color: Colors.transparent,
          ),
        );
      },
      errorWidget: (context, url, error) {
        return Center(
          child: Icon(
            Icons.image_not_supported,
            color: Colors.grey[200],
          ),
        );
      },
    ).clipRRect(all: radius).width(width).height(height);
  }
}
