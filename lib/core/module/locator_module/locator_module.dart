import 'package:flutter_starter_app/utils/shared_preferences/utils_sharedpreferences.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

class LocatorModule{
  static void init(){
    locator.registerSingleton(UtilsSharedPreferences());
  }
}