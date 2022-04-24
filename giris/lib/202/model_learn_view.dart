import 'package:flutter/material.dart';
import 'package:giris/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  PostModel7 user8 = PostModel7(body: "body");
  @override
  void initState() {
    super.initState();

    final user = PostModel() // Postmodel
      ..userId = 1
      ..id = 1;
    user.body = "body";

    final user1 = PostModel1(1, 2, "title", "body"); // Postmodel 1

    final user2 = PostModel2(1, 2, "title", "body"); // Postmodel 2

    final user3 = PostModel3(userId: 1, id: 2, title: "title", body: "body"); // Postmodel 3

    final user4 = PostModel4(userId: 1, id: 2, title: "title", body: "body"); // Postmodel 4

    final user5 = PostModel5(userId: 1, id: 2, title: "title", body: "body"); // Postmodel 5

    final user6 = PostModel6(); // Postmodel 6

    //Service
    final user7 = PostModel7(body: "body"); // Postmodel 7
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        user8 = PostModel7().copyWith(
          title: "title dale",
        );
        user8.updateBody("updateBody");
        setState(() {});
      }),
      appBar: AppBar(
        title: Text(user8.body ?? "Data yok "),
      ),
    );
  }
}
