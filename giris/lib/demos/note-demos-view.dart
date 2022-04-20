import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giris/101/image-learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);
  final _title = "Create Your First Note";
  final _description = "add to note";
  final _createNote = "Create a note";
  final _importNotes = "Import Notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horiztontalPadding,
        child: Column(
          children: [
            JpgImage(name: ImageItems().bookImage),
            TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: SubTitleWidget(title: _description),
            ),
            const Spacer(),
            _createMethod(context),
            TextButton(
                onPressed: () => {},
                child: Text(
                  _importNotes,
                )),
            const SizedBox(height: ButtonHeights.buttonNormalHight),
          ],
        ),
      ),
    );
  }

  ElevatedButton _createMethod(BuildContext context) {
    return ElevatedButton(
        onPressed: () => {},
        child: SizedBox(
            height: ButtonHeights.buttonNormalHight,
            child: Center(
                child: Text(
              _createNote,
              style: Theme.of(context).textTheme.headline5,
            ))));
  }
}

// Center Text Widget

class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.title})
      : super(key: key);
  final TextAlign textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title * 10,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horiztontalPadding =
      EdgeInsets.symmetric(horizontal: 20);

  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  static const double buttonNormalHight = 50;
}
