import 'dart:convert';

import 'package:dio/dio.dart';

class DioException implements Exception{
  String message = "UNKNOWN ERROR";
  DioException.fromDioError(DioError dioError){
    switch(dioError.type){
      case DioErrorType.other :
        message = "DIO ERROR OTHER";
        break;
      case DioErrorType.response :
        message = jsonEncode(dioError.response);
        break;
      case DioErrorType.connectTimeout :
        message = "ERROR CONNECT TIMEOUT";
        break;
      case DioErrorType.receiveTimeout :
        message = "ERROR RECEIVE TIMEOUT";
        break;
      default :
        message = "DIO ERROR DEFAULT";
        break;
    }
  }
}