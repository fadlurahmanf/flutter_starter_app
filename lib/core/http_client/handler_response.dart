import 'package:dio/dio.dart';
import 'package:flutter_starter_app/core/dio_exception/dio_exception.dart';

Future<T> handleResponse<T>(
    {required Future<Response<dynamic>> Function() request,
      required T Function(Response<dynamic>) onSuccess}) async {
  try {
    final result = await request();
    return onSuccess(result);
  } on DioError catch (e) {
    var message = DioException.fromError(e);
    throw message;
  } catch (e) {
    var message = e.toString();
    throw message;
  }
}