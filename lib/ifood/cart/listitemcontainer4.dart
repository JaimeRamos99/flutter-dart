import 'package:flutter/material.dart';

class ListaItemCuatro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todo = Container(
      width: MediaQuery.of(context).size.width * 0.20,
      color: Colors.red,
    );
    return todo;
  }
}
