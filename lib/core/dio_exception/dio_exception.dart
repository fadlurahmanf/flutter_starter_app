import 'package:dio/dio.dart';

class DioException{
  final int? statusCode;
  final String message;
  final DioErrorType type;
  final Response<dynamic>? response;
  DioException({this.statusCode, required this.message, required this.type, this.response});

  factory DioException.fromError(DioError error){
    return DioException(statusCode: error.response?.statusCode, message: error.message, type: error.type, response: error.response);
  }
}