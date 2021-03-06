import 'package:flutter/material.dart';
import '../../restaurant/ui/appbar.dart';
import 'first.dart';
import 'second.dart';
import 'third.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appbar = Row(
      children: <Widget>[Appbar()],
    );
    final contenido = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[FirstProduct(), SecondProduct(), ThirdProduct()],
    );
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[contenido, appbar],
        ),
      ),
    );
  }
}