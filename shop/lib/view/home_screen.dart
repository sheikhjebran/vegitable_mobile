import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required int shopId, required int userId})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold();
  }
}
