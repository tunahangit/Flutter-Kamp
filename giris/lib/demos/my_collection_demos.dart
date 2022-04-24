import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        padding: PaddingUtility().paddingHorizontal,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: Padding(
        padding: PaddingUtility().paddingAll,
        child: Column(
          children: [
            Image.asset(_model.imagePath),
            Padding(
              padding: PaddingUtility().paddingTop,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(_model.title), Text("${_model.price} eth")],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(imagePath: ProjectImage.imagePathTeemo, title: "Teemo", price: 31),
      CollectionModel(imagePath: ProjectImage.imagePathFizz, title: "Fizz", price: 31),
      CollectionModel(imagePath: ProjectImage.imagePathRumble, title: "Rumble", price: 31)
    ];
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final int price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingAll = const EdgeInsets.all(20);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImage {
  static String imagePathTeemo = "assets/jpg/teemo.jpg";
  static String imagePathFizz = "assets/jpg/fizz.jpg";
  static String imagePathRumble = "assets/jpg/rumble.jpg";
}
