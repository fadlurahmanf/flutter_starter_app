import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_starter_app/core/http_client/handler_response.dart';
import 'package:flutter_starter_app/ui/example1/response/post_response.dart';

abstract class PostDataSources{
  FutureOr<PostResponse> getPost();
}

class PostDataImpl extends PostDataSources{

  @override
  FutureOr<PostResponse> getPost() {
    return handleResponse(
        request: () async => await Dio().get("https://jsonplaceholder.typicode.com/posts/2"),
        onSuccess: (result) => PostResponse.fromJson(result.data as Map<String, dynamic>)
    );
  }

}