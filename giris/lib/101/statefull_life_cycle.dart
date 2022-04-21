import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  StatefullLifeCycleLearn({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = "";
  late final bool _isOdd; // constructor anında değerini alacak.(late)

  @override
  void didChangeDependencies() {
    //initState sonrası çalışır.
    //Bu da initState gibi draw öncesi çalışır
    super.didChangeDependencies();
    print("c");
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("b");
  }

  @override
  void dispose() {
    // sayfadan çıkıldığı an çalışır.
    // Sayfada işimiz bitince temizlemek istediğimiz yerleri yaparız.
    // _message="";
    super.dispose();
    print("alo");
  }

  //Mesaj tekse yanına tek , çift ise yanına çift yaz.
  @override
  void initState() {
    //constructor gibi düşünebiliriz
    //init state bittikten sonra build metodu çağırılır. Ekran çizilir
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print("a");
  }

  void _computeName() {
    if (_isOdd) {
      _message += "tek";
    } else {
      _message += "çift";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(
              onPressed: () => {},
              child: Text(_message),
            )
          : ElevatedButton(onPressed: () => {}, child: Text(_message)),
    );
  }
}
