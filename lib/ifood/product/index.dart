import 'package:flutter/material.dart';
import '../restaurant/appbar.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appbar = Row(
      children: <Widget>[Appbar()],
    );
    final contenido = Container();
    return Stack(
      children: <Widget>[contenido, appbar],
    );
  }
}
