import 'package:flutter/material.dart';
import 'package:giris/demos/color_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({Key? key}) : super(key: key);

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: _chanheBackround, icon: const Icon(Icons.clear))],
      ),
      body: Column(children: [
        const Spacer(),
        Expanded(
            child: ColorDemos(
          initialColor: _backroundColor,
        ))
      ]),
    );
  }

  void _chanheBackround() {
    _backroundColor = Colors.pink;
    setState(() {});
  }
}
