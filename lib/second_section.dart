import 'package:flutter/material.dart';
import 'third_section.dart';

class SecondSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final main2 = Container(
      color: Colors.blue,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
    );
    final second = Container(
      color: Colors.red,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
    );
    return Column(
      children: <Widget>[main2, second],
    );
  }
}
