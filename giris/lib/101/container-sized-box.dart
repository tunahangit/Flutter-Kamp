import 'package:flutter/material.dart';

class ContainerSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text("data" * 100),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text("tk" * 100),
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
            constraints: const BoxConstraints(minHeight: 50, maxHeight: 100),
            child: Text("papi" * 10),
          )
        ],
      ),
    );
  }
}
