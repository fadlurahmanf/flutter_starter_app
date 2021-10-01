import 'package:flutter_starter_app/core/http_client/http_dio_client.dart';
import 'package:flutter_starter_app/ui/example1/datasources/post_datasources.dart';
import 'package:flutter_starter_app/utils/shared_preferences/utils_sharedpreferences.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

class LocatorModule{
  static void init(){
    locator.registerSingleton(UtilsSharedPreferences());
    locator.registerSingleton(HttpClientDio(buildConfig: GetIt.I()));
    locator.registerFactory(() => PostDataRepository());
  }
}