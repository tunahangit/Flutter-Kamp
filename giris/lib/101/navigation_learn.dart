import 'package:flutter/material.dart';
import 'package:giris/101/image-learn.dart';
import 'package:giris/101/list_view_builder.dart';
import 'package:giris/101/navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {
  List<int> selectedItems = [];
  void addSelected(int index) {
    selectedItems.add(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_rounded),
        onPressed: () {},
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToWidgetNormal<bool>(context, const NavigateDetailLearn());

              if (response == true) {
                addSelected(index);
              }
            },
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.green : Colors.red,
            ),
          );
        },
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        settings: const RouteSettings()));
  }
}

Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
  return Navigator.of(context).push<T>(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      settings: const RouteSettings()));
}
