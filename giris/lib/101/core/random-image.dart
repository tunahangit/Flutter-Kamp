import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({Key? key, this.height}) : super(key: key);
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/jpg/teemo.jpg",
      fit: BoxFit.cover,
      height: height,
    );
  }
}
