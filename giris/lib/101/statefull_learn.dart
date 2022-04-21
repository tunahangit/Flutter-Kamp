import 'package:flutter/material.dart';
import 'package:giris/101/prdocut/counter_hello_button.dart';
import 'package:giris/101/prdocut/language/language_items.dart';

//stateless gibi çalışır
//Sadece dışarıdan parametre(data) alır.
class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;

  int _counterCustom = 0;
  void _updateCount(bool isIncrament) {
    if (isIncrament) {
      _countValue++;
    } else {
      _countValue--;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LangueageItems.welcomeTitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [_incrementButton(), _deIncrementButton()],
      ),
      body: Column(
        children: [
          const Placeholder(),
          const CounterHelloButton(),
          Center(
              child: Text(
            "$_countValue",
            style: Theme.of(context).textTheme.headline2,
          )),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print("dale");
    return FloatingActionButton(
      onPressed: () => {_updateCount(true)},
      child: const Icon(Icons.add),
    );
  }

  Padding _deIncrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () => {_updateCount(false)},
        child: const Icon(Icons.remove),
      ),
    );
  }
}
