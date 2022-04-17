import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);

  final IconSizes iconSizes = IconSizes();
  final IconColor iconColor = IconColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("data")),
      body: Column(children: [
        IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.message_outlined,
              color: iconColor.froly,
              size: IconSizes.iconSmall2x,
            )),
        IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.message_outlined,
              color: Theme.of(context).colorScheme.error,
              size: iconSizes.iconSmall,
            )),
      ]),
    );
  }
}

class IconSizes {
  final double iconSmall = 20;
  static double iconSmall2x = 40;
}

class IconColor {
  final Color froly = const Color(0xffED617A);
}
