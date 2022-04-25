import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:giris/202/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({Key? key}) : super(key: key);

  @override
  State<ServicePostLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServicePostLearn> {
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = "https://jsonplaceholder.typicode.com";
  String? name;

  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    // proje başladığında ilk çağıralacak (initState içine)
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  void _addItemToService(PostModel postModel) async {
    _changeLoading();
    final response = await _dio.post("/posts", data: postModel);
    if (response.statusCode == HttpStatus.created) {
      name:
      "Başarılı :)";
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("$name"),
          actions: [_isLoading ? const CircularProgressIndicator() : const SizedBox.shrink()],
        ),
        body: Column(children: [
          TextField(
              controller: _titleController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Title")),
          TextField(
              controller: _bodyController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Body")),
          TextField(
              controller: _userIdController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "UserId")),
          TextButton(
              onPressed: _isLoading
                  ? null
                  : () {
                      if (_titleController.text.isNotEmpty &&
                          _bodyController.text.isNotEmpty &&
                          _userIdController.text.isNotEmpty) {
                        final model = PostModel(
                            title: _titleController.text,
                            body: _bodyController.text,
                            userId: int.tryParse(_userIdController.text));

                        _addItemToService(model);
                      }
                    },
              child: const Text("Gönder"))
        ]));
  }
}

class _postCard extends StatelessWidget {
  const _postCard({
    Key? key,
    required PostModel? model,
  })  : _model = model,
        super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ""),
        subtitle: Text(_model?.body ?? ""),
      ),
    );
  }
}
