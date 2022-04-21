import 'package:flutter/material.dart';
import 'package:giris/101/core/random-image.dart';

class StackView extends StatelessWidget {
  const StackView({Key? key}) : super(key: key);
  final _cardHight = 50.0;
  final _cardWidh = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: const RandomImage(),
                  bottom: _cardHight / 2,
                ),
                Positioned(height: _cardHight, bottom: 0, width: _cardWidh, child: _cardCustom())
              ],
            ),
          ),
          const Spacer(
            flex: 6,
          ),
        ],
      ),
    );
  }

  Card _cardCustom() {
    return const Card(
      color: Colors.green,
      shape: RoundedRectangleBorder(),
    );
  }
}
