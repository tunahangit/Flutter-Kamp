import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Butonlar")),
        body: Column(
          children: [
            TextButton(
              child: const Text("Text Button"),
              onPressed: () => {},
            ),
            ElevatedButton(
              child: const Text("Elevated Button"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                }
                return Colors.blue;
              })),
              onPressed: () => {},
            ),
            IconButton(
              icon: const Icon(Icons.abc_outlined),
              onPressed: () => {},
            ),
            FloatingActionButton(
              onPressed: () => {},
              child: const Icon(Icons.add),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red, shape: const CircleBorder()),
              onPressed: () => {},
              child: const Text("text"),
            ),
            InkWell(onTap: () => {}, child: const Text("Text Press")),
            Container(
              height: 200,
              color: Colors.white,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () => {},
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, right: 40, left: 40),
                  child: Text(
                    "Place Bid",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                )),
          ],
        ));
  }
}
