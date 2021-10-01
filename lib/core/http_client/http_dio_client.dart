import 'package:dio/dio.dart';
import 'package:flutter_starter_app/utils/build_config.dart';

extension HttpClientDio on Dio {
  Dio init(BuildConfig buildConfig) {
    options.baseUrl = buildConfig.baseUrl;
    if (buildConfig.debug) interceptors.add(LogInterceptor(responseBody: true));
    return this;
  }
}