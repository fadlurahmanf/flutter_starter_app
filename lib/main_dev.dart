import 'package:flutter_starter_app/core/module/main_module.dart';
import 'package:flutter_starter_app/main.dart';
import 'package:flutter_starter_app/utils/build_config.dart';

Future<void> main() async {
  await MainModule.init(
    buildConfig: () => BuildConfig(baseUrl: "https://jsonplaceholder.typicode.com/", debug: true),
  );
  mainApp();
}