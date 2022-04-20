import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Card Learn")),
        body: Column(
          children: [
            ProjectCard(
                child: const SizedBox(
              height: 100,
              width: 100,
              child: Center(child: Text("tunahan")),
            )),
            Card(
              color: Theme.of(context).colorScheme.error,
              child: const SizedBox(height: 100, width: 100),
            )
          ],
        ));
  }
}

class ProjectsMargin {
  static const cardMargin = EdgeInsets.all(10);
}

class ProjectCard extends StatelessWidget {
  ProjectCard({Key? key, required this.child}) : super(key: key);
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectsMargin.cardMargin,
      child: child,
      shape: roundedRectangleBorder,
    );
  }
}

//Borders
//StadiumBorder() , CircleBorder(), RaundedRectangeBorder() 