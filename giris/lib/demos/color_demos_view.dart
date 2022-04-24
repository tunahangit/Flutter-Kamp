/* Bir ekran olacak
Bu ekranda 3 adet buton olacak
Bu butonlara basılınca renk değişimi olacak 
Seçili olan buton selected icon olsun */

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({Key? key, required this.initialColor}) : super(key: key);

  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backRoundColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _backRoundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialColor != _backRoundColor && widget.initialColor != null) {
      changeBackroundColor(widget.initialColor!);
    }
  }

  void changeBackroundColor(Color color) {
    _backRoundColor = color;
    setState(() {}); // Unutma :)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backRoundColor,
      bottomNavigationBar: BottomNavigationBar(onTap: _colorOnTap, //hangisine tıklandığını alabiliyorum.
          items: const [
            BottomNavigationBarItem(icon: _colorContainer(color: Colors.red), label: "Red"),
            BottomNavigationBarItem(icon: _colorContainer(color: Colors.green), label: "Green"),
            BottomNavigationBarItem(icon: _colorContainer(color: Colors.blue), label: "Blue")
          ]),
    );
  }

  void _colorOnTap(int value) {
    print(value);
    if (value == _MyColors.RED.index) {
      changeBackroundColor(Colors.red);
    } else if (value == _MyColors.GREEN.index) {
      changeBackroundColor(Colors.green);
    } else {
      changeBackroundColor(Colors.blue);
    }
  }
}

enum _MyColors { RED, GREEN, BLUE }

class _colorContainer extends StatelessWidget {
  const _colorContainer({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(color: color, width: 10, height: 10);
  }
}
