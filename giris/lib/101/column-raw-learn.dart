import 'package:flutter/material.dart';

class ColumnRawLearn extends StatelessWidget {
  const ColumnRawLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.red)),
                Expanded(child: Container(color: Colors.green)),
                Expanded(child: Container(color: Colors.blue)),
                Expanded(child: Container(color: Colors.teal)),
              ],
            ),
            flex: 4,
          ),
          const Spacer(
            flex: 2,
          ),
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [Text("a1"), Text("a2"), Text("a3")]),
            flex: 2,
          ),
          Container(
            height: ProjectContainerSizes.maxHight,
            child: Column(children: const [
              Expanded(
                child: SizedBox(
                  width: 50,
                  child: Text("data"),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 50,
                  child: Text("data"),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 50,
                  child: Text("data"),
                ),
              ),
              Spacer(),
              Expanded(
                child: SizedBox(
                  width: 50,
                  child: Text("data"),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const double maxHight = 200;
}
