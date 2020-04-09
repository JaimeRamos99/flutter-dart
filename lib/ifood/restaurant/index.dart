import 'package:flutter/material.dart';
import 'abajo.dart';
import 'arriba.dart';

class IndexRestaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final abajo = Row(children: <Widget>[Abajo()]);
    final arriba = Row(children: <Widget>[
      Arriba(
        nombre: "New York Donut Co.",
        calificacion: "4,0",
        categoria: " |  Cómida rápida",
        tiempo: " | 15-25 min",
        reviews: " 24 reviews",
        imagenRestaurante: "assets/dona1.jpg",
      )
    ]);

    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[abajo, arriba],
        ),
      ),
    );
  }
}
