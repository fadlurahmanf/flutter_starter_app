import 'package:dio/dio.dart';
import 'package:flutter_starter_app/utils/build_config.dart';

class HttpClientDio{
  BuildConfig buildConfig;
  HttpClientDio({required this.buildConfig});
  Dio get dioClient => _dio();
  Dio _dio(){
  final options = BaseOptions(
      baseUrl: buildConfig.baseUrl,
      connectTimeout: 1,
      receiveTimeout: 1,
  );
  var dio = Dio(options);
  return dio;
  }
}