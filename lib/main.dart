import 'package:flutter/material.dart';
import 'package:flutter_starter_app/ui/home_screen.dart';
import 'package:get/get.dart';

void mainApp() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Starter App',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: HomeScreen(),
    );
  }
}

