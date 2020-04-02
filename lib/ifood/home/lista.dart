import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final content = Container(
        margin: new EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.07,
          right: MediaQuery.of(context).size.width * 0.07,
          top: MediaQuery.of(context).size.width * 0.07,
        ),
        width: MediaQuery.of(context).size.width * 0.86,
        height: MediaQuery.of(context).size.height * 0.55,
        decoration: BoxDecoration(
          color: Colors.greenAccent,
        ));
    return content;
  }
}
