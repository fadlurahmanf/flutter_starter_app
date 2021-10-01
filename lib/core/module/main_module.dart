import 'package:flutter/cupertino.dart';
import 'package:flutter_starter_app/core/module/locator_module/locator_module.dart';
import 'package:flutter_starter_app/utils/build_config.dart';
import 'package:get_it/get_it.dart';

class MainModule{
  static Future<void> init(
      {required BuildConfig Function() buildConfig}) async{
    GetIt.I.registerLazySingleton(() => buildConfig());
    WidgetsFlutterBinding.ensureInitialized();
    loadModules();
  }

  static Future<void> loadModules()async{
    LocatorModule.init();
  }
}