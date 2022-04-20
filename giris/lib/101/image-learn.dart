import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Learning")),
      body: Column(children: [
        SizedBox(
            height: 400,
            width: 300,
            child: JpgImage(name: ImageItems().nasusImage)),
      ]),
    );
  }
}

class ImageItems {
  final String bookImage = "book";
  final String teemoImage = "teemo";
  final String nasusImage = "rumble";
}

class JpgImage extends StatelessWidget {
  const JpgImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(nameWithPath, fit: BoxFit.cover);
  }

  String get nameWithPath => "assets/jpg/$name.jpg";
}
