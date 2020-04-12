import 'package:flutter/material.dart';
import 'listaitem.dart';
import 'delivery.dart';
import 'promo.dart';
class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListaItem(pathImage: "assets/dona1.jpg"),
        //ListaItem(pathImage: "assets/dona5.jpg"),
        Promo(),
        Delivery()
      ],
    );
  }
}
