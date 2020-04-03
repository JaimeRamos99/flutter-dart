import 'package:flutter/material.dart';

class ItemLista extends StatelessWidget {
  final String nombre;
  final String precio;
  final String pathImage;
  final String ingredients;

  const ItemLista(
      {Key key, this.nombre, this.precio, this.pathImage, this.ingredients})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ItemLista = Container(
      height: MediaQuery.of(context).size.height * 0.12,
      margin: new EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.03,
          right: MediaQuery.of(context).size.width * 0.03,
          bottom: MediaQuery.of(context).size.width * 0.01),
      color: Colors.green,
    );
    return ItemLista;
  }
}
