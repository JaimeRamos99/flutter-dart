import 'package:flutter/material.dart';

class SecondProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todo = Container(
        color: Colors.yellow,
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.35,
        margin: new EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.05,
            left: MediaQuery.of(context).size.width * 0.05));
    return todo;
  }
}
