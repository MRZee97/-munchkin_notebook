import 'package:flutter/material.dart';

class ImageSize extends StatelessWidget {
  const ImageSize({required this.image, super.key});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 120,
      height: 160,
    );
  }
}
