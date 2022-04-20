import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stateless Widged Learn"),
        ),
        body: Column(
          children: [
            const TitleTextWidged(text: "Data1"),
            _sizedBox(),
            const TitleTextWidged(text: "Data2"),
            _sizedBox(),
            const TitleTextWidged(text: "Data3"),
            _sizedBox()
          ],
        ));
  }

  SizedBox _sizedBox() => const SizedBox(height: 10);
}

class TitleTextWidged extends StatelessWidget {
  const TitleTextWidged({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
