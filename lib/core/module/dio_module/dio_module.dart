import 'package:dio/dio.dart';
import 'package:flutter_starter_app/core/http_client/http_dio_client.dart';
import 'package:get_it/get_it.dart';

late Dio dio;
class DioModule{
  static void init(){
    dio = GetIt.I<HttpClientDio>().dioClient;
  }
}