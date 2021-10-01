import 'dart:async';
import 'package:flutter_starter_app/core/http_client/handler_response.dart';
import 'package:flutter_starter_app/core/module/dio_module/dio_module.dart';
import 'package:flutter_starter_app/ui/example1/response/post_response.dart';

abstract class PostDataSources{
  FutureOr<PostResponse> getPost();
}

class PostDataRepository extends PostDataSources{

  @override
  FutureOr<PostResponse> getPost() {
    return handleResponse(
        request: () async => await dio.get("posts/2"),
        onSuccess: (result) => PostResponse.fromJson(result.data as Map<String, dynamic>)
    );
  }

}