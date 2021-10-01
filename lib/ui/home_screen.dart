import 'package:flutter/material.dart';
import 'package:flutter_starter_app/commons/commons_textstyle.dart';
import 'package:flutter_starter_app/ui/example1/example1screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeLayout();
  }
}

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          Get.to(Example1Screen());
        }, child: Text("GO TO EXAMPLE 1", style: CommonsTextStyle.body18RegBlackGrey,)),
      ),
    );
  }
}

