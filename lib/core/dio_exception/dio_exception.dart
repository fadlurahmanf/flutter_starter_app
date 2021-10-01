import 'package:dio/dio.dart';

class DioException implements Exception{
  String message = "UNKNOWN";
  DioException.fromDioError(DioError dioError){
    switch(dioError.type){
      case DioErrorType.other :
        message = "DIO ERROR OTHER";
        break;
      case DioErrorType.response :
        message = dioError.response!.statusCode.toString();
        break;
      default :
        message = "DIO ERROR DEFAULT";
        break;
    }
  }
}