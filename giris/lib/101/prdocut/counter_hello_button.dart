import 'package:flutter/material.dart';
import 'package:giris/101/prdocut/language/language_items.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({Key? key}) : super(key: key);

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCustom = 0;
  final String _welcomeTitle = LangueageItems.welcomeTitle;
  void _updateCounter() {
    _counterCustom++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () => _updateCounter(), child: Text("$_welcomeTitle $_counterCustom"));
  }
}
