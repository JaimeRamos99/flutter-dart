import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'appbar.dart';
import 'franja.dart';

class Arriba extends StatelessWidget {
  final String nombre;
  final String calificacion;
  final String categoria;
  final String tiempo;
  final String reviews;
  final String imagenRestaurante;

  const Arriba(
      {Key key,
      this.nombre,
      this.calificacion,
      this.categoria,
      this.tiempo,
      this.reviews,
      this.imagenRestaurante})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contanierPrincipal = Column(
      children: <Widget>[
        Row(
          children: <Widget>[Appbar()],
        ),
        Row(
          children: <Widget>[
            Franja(
                nombre: nombre,
                calificacion: calificacion,
                categoria: categoria,
                tiempo: tiempo,
                reviews: reviews,
                imagenRestaurante: imagenRestaurante)
          ],
        )
      ],
    );
    return contanierPrincipal;
  }
}
