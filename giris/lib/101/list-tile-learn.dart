import 'package:flutter/material.dart';
import 'package:giris/101/core/random-image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              dense: true,
              title: const RandomImage(height: 100),
              onTap: () => {},
              subtitle: const Text("How do you use yor card?"),
              minVerticalPadding: 0,
              leading: const Icon(Icons.money),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
    );
  }
}
