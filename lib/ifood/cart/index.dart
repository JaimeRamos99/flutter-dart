import 'package:flutter/material.dart';
import 'section1.dart';
import 'section2.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todo = Container(
      child: Column(
        children: <Widget>[FirstSection(), SecondSection()],
      ),
    );
    return todo;
  }
}
