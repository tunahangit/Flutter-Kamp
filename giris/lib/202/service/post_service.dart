import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:giris/202/service/post_model.dart';

class PostService {
  final Dio _dio;

  PostService() : _dio = Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com"));

  Future<bool> _addItemToService(PostModel postModel) async {
    final response = await _dio.post(_PostServicePath.posts.name, data: postModel);
    return response.statusCode == HttpStatus.created;
  }
}

Future<List<PostModel>?> fetchPostItems() async {
  final response = await _dio.get(_PostServicePath.posts.name); //cevabı bekle aşağıya geçme (await)
  if (response.statusCode == HttpStatus.ok) {
    final _datas = response.data;
    if (_datas is List) {
      return _datas.map((e) => PostModel.fromJson(e)).toList();
    }
  }
  return null;
}

enum _PostServicePath { posts, comments }
