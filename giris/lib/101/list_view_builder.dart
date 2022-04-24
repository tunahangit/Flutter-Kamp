import 'package:flutter/material.dart';

// Doğrudan listView vermek bütün dizizi yollacağından sıkıntılı olabilir.
// Dolayısıyla lisViewBuilder kullanmak daha doğru olacaktır.
// ListViewBuilder ekranda sadece görülebilen alana kadar çizer.
// Alta doğru indikte çizmeye devam eder.
class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              const Placeholder(
                color: Colors.red,
              ),
              Text("$index")
            ],
          );
        },
      ),
    );
  }
}
