import 'package:flutter/material.dart';

class SacaffoldLearn extends StatelessWidget {
  const SacaffoldLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text("data"),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(onPressed: () => {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "a"),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "b"),
      ]),
    );
  }
}
