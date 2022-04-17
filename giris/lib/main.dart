import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giris/101/app-bar.dart';
import 'package:giris/101/button-learn.dart';
import 'package:giris/101/container-sized-box.dart';
import 'package:giris/101/icon-learn.dart';
import 'package:giris/101/scaffold-learn.dart';
import 'package:giris/101/text-learn-view.dart';

void main() {
  runApp(const MyApp()); // Ali Dayı
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.green,
        elevation: 0,
      )),
      home: IconLearnView(),
    );
  }
}
