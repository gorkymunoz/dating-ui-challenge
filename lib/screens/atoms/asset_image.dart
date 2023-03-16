import 'package:flutter/material.dart';

class AssetImage extends StatelessWidget {
  final String url;
  final double widthImage;
  final double heightImage;

  const AssetImage(
      {Key? key,
      required this.url,
      required this.widthImage,
      required this.heightImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image = Image.network(
      url,
      width: widthImage,
      height: heightImage,
    );
    return image;
  }
}
