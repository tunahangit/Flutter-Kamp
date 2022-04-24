class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel1 {
  int userId;
  int id;
  String title;
  String body;

  PostModel1(this.userId, this.id, this.title, this.body);
}

//Sadece nesne oluşturulurken (constructor)  değer verilir. Başka bir değer almaz.
class PostModel2 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel2(this.userId, this.id, this.title, this.body);
}

//named parametre alır.
class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel3({required this.userId, required this.id, required this.title, required this.body});
}

class PostModel4 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  PostModel4({required int userId, required int id, required String title, required String body})
      : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}

class PostModel5 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel5({required int userId, required int id, required String title, required String body}) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
  //String get getTitle => _title;
}

class PostModel6 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel6({int userId = 0, int id = 0, String title = "", String body = ""}) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
}

//Service

class PostModel7 {
  final int? userId;
  final int? id;
  final String? title;
  String? body;

  PostModel7({this.userId, this.id, this.title, this.body});

  void updateBody(String? data) {
    if (data != null && data.isNotEmpty) {
      body = data;
    }
  }

  PostModel7 copyWith({
    final int? userId,
    final int? id,
    final String? title,
    String? body,
  }) {
    return PostModel7(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
