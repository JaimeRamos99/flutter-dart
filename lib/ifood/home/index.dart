//archivo que tiene la estructura del home de ifood
import 'package:flutter/material.dart';
import 'lista.dart';
import 'categories.dart';
import 'header.dart';
class indexHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final header = Row(
        children: <Widget>[Header()]
    );
    final categories = Row(
        children: <Widget>[Categories()]
    );
    final lista = Row(
        children: <Widget>[Lista()]
    );
    return Column(
      children: <Widget>[header, categories, lista],
    );
  }
}
