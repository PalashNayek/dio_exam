import 'package:dio/dio.dart';

import '../models/Post.dart';

class PostRepository {
  final Dio dio;

  PostRepository({required this.dio});

  Future<Post> fetchPost() async {
    final response = await dio.get('/posts/1');

    if (response.statusCode == 200) {
      return Post.fromJson(response.data);
    } else {
      throw Exception('Failed to load post');
    }
  }
}