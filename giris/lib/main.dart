import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giris/101/app-bar.dart';
import 'package:giris/101/button-learn.dart';
import 'package:giris/101/card-learn.dart';
import 'package:giris/101/column-raw-learn.dart';
import 'package:giris/101/container-sized-box.dart';
import 'package:giris/101/custom-widget-learn.dart';
import 'package:giris/101/icon-learn.dart';
import 'package:giris/101/image-learn.dart';
import 'package:giris/101/indicator-learn.dart';
import 'package:giris/101/list-tile-learn.dart';
import 'package:giris/101/list_view_builder.dart';
import 'package:giris/101/list_view_learn.dart';
import 'package:giris/101/navigate_detail_learn.dart';
import 'package:giris/101/navigation_learn.dart';
import 'package:giris/101/padding-learn.dart';
import 'package:giris/101/page_view_learn.dart';
import 'package:giris/101/scaffold-learn.dart';
import 'package:giris/101/stack-learn.dart';
import 'package:giris/101/statefull_learn.dart';
import 'package:giris/101/statefull_life_cycle.dart';
import 'package:giris/101/stateless-learn.dart';
import 'package:giris/101/text-learn-view.dart';
import 'package:giris/101/text_field_learn.dart';
import 'package:giris/202/model_learn_view.dart';
import 'package:giris/202/service/service_learn_view.dart';
import 'package:giris/202/service/service_post_learn.dart';
import 'package:giris/202/tab_learn.dart';
import 'package:giris/demos/color_demos_view.dart';
import 'package:giris/demos/color_life_cycle.dart';
import 'package:giris/demos/my_collection_demos.dart';
import 'package:giris/demos/note-demos-view.dart';
import 'package:giris/demos/stack-demo-view.dart';

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
          listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
          progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.pink),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: const ServicePostLearn(),
    );
  }
}
