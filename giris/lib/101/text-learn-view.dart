import 'dart:ffi';

import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key}) : super(key: key);
  final String name = "Tunahan";
  final String surname = "karabayır";
  final ProjectKeys kurs = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ("Selam $name ${surname.toUpperCase()} "),
              style: const TextStyle(
                wordSpacing: 2,
                letterSpacing: 2,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                color: Colors.red,
              ),
            ),
            Text(
              ("Merhaba $name ${surname.toUpperCase()} "),
              style: ProjectStyles.welcomeStyle,
            ),
            Text(("Hoşgeldin $name ${surname.toUpperCase()} "),
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: ProjectColors.welcomeColor)),
            Text(kurs.isim),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
    wordSpacing: 2,
    letterSpacing: 2,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    color: Colors.red,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.green;
}

class ProjectKeys {
  final String isim = "flutter";
}
