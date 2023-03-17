import 'package:flutter/material.dart';

class AssetDatingImage extends StatelessWidget {
  final String path;
  final double widthImage;
  final double heightImage;

  const AssetDatingImage(
      {Key? key,
      required this.path,
      required this.widthImage,
      required this.heightImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image = Image.asset(
      path,
      width: widthImage,
      height: heightImage,
      fit: BoxFit.cover,
    );
    return image;
  }
}
