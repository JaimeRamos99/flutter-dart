import 'package:flutter/material.dart';
import 'itemLista.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Lista = Container(
      height: MediaQuery.of(context).size.height * 0.46,
      color: Colors.yellow,
      child: ListView(
        children: <Widget>[
          ItemLista(
            nombre: "",
            precio: "",
            pathImage: "",
            ingredients: "",
          ),
          ItemLista(
            nombre: "",
            precio: "",
            pathImage: "",
            ingredients: "",
          ),ItemLista(
            nombre: "",
            precio: "",
            pathImage: "",
            ingredients: "",
          ),ItemLista(
            nombre: "",
            precio: "",
            pathImage: "",
            ingredients: "",
          )
        ],
      ),
    );
    return Lista;
  }
}
