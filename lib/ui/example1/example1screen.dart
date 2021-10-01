import 'package:flutter/material.dart';

class Example1Screen extends StatelessWidget {
  const Example1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Example1Layout();
  }
}

class Example1Layout extends StatefulWidget {
  const Example1Layout({Key? key}) : super(key: key);

  @override
  _Example1LayoutState createState() => _Example1LayoutState();
}

class _Example1LayoutState extends State<Example1Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(child: Text("EXAMPLE 1 PAGE"),)
        ],
      ),
    );
  }
}

