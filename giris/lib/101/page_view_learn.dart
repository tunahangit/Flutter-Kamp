import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:giris/101/image-learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.7);
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    _currentPageIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 31),
            child: Text("$_currentPageIndex"),
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: () => {
              _pageController.previousPage(duration: _DurationUtility._durationLow, curve: _CurveUtility._curveSlow)
            },
            child: Icon(Icons.chevron_left),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: FloatingActionButton(
              onPressed: () =>
                  {_pageController.nextPage(duration: _DurationUtility._durationLow, curve: _CurveUtility._curveSlow)},
              child: Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [
          Container(
            child: Image.asset("assets/jpg/teemo.jpg"),
          ),
          Container(
            child: Image.asset("assets/jpg/nasus.jpg"),
          ),
          Container(
            child: Image.asset("assets/jpg/yuumi.jpg"),
          )
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}

class _CurveUtility {
  static const _curveSlow = Curves.slowMiddle;
}
