import 'package:flutter/material.dart';
import 'package:giris/101/image-learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          extendBody: true, //button yuvarlağı
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(onPressed: () {
            _tabController.animateTo(0);
          }),
          bottomNavigationBar: BottomAppBar(
              notchMargin: 10,
              shape: const CircularNotchedRectangle(), // button yuvarlağı
              child: TabBar(
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.green,
                  indicatorColor: Colors.white,
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      text: "page1",
                    ),
                    Tab(text: "page2")
                  ])),
          body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [const ImageLearn(), Image.asset("assets/jpg/teemo.jpg")]),
        ));
  }
}
