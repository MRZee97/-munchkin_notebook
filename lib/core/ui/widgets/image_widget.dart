import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ImageWidget extends StatelessWidget {
  ImageWidget({required this.image, super.key});
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
