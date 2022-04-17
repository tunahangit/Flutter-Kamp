import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);

  final String title = "AppBar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: const Icon(Icons.chevron_left),
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.chevron_right))
        ],
      ),
      body: Column(
        children: [
          Text(title),
        ],
      ),
    );
  }
}
