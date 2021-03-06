import 'package:dio/dio.dart';
import 'package:flutter_starter_app/utils/build_config.dart';

class HttpClientDio{
  BuildConfig buildConfig;
  HttpClientDio({required this.buildConfig});
  Dio get dioClient => _dio();
  Dio _dio(){
  final options = BaseOptions(
      baseUrl: buildConfig.baseUrl,
      connectTimeout: 6000,
      receiveTimeout: 6000,
  );
  var dio = Dio(options);
  return dio;
  }
}