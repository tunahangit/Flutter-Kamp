import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giris/101/prdocut/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
              maxLength: 31,
              buildCounter: (BuildContext contex, {int? currentLength, bool? isFocused, int? maxLength}) {
                return _animatedContainer(currentLength);
              },
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email], //otomatik tamamlama tarzı
              focusNode: focusNodeTextFieldOne,
              inputFormatters: [TextProjectInputFormatter()._formatter],
              textInputAction: TextInputAction.next, //nest bastığında aşağıdaki text alanına geçer.
              decoration: InputDecorator().emailInput),
          TextField(
            focusNode: focusNodeTextFieldTwo,
          )
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
        key: key,
        duration: const Duration(seconds: 1),
        height: 10,
        width: 10.0 * (currentLength ?? 0), //?? nullable
        color: Colors.green);
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "a") {
      return oldValue;
    } else {
      return oldValue;
    }
  });
}

class InputDecorator {
  final emailInput = const InputDecoration(
    prefix: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LangueageItems.mailTitle,
  );
}
