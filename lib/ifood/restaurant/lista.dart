import 'package:flutter/material.dart';
import 'itemLista.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Lista = Container(
      height: MediaQuery.of(context).size.height * 0.46,
      child: ListView(
        children: <Widget>[
          ItemLista(
            nombre: "lime Donut",
            precio: "\$9,75",
            pathImage: "assets/dona3.jpg",
            ingredients: "lemon - sugar - lime - Flavour - milk",
          ),
          ItemLista(
            nombre: " Krispy chocolate",
            precio: "\$19,5",
            pathImage: "assets/dona4.jpg",
            ingredients: "chocolate - sugar - Flavour - milk",
          ),ItemLista(
            nombre: "Salty Donut",
            precio: "\$4,75",
            pathImage: "assets/dona5.jpg",
            ingredients: "salt - sugar - Flavour - milk",
          ),ItemLista(
            nombre: "Blue Donut",
            precio: "\$5,0",
            pathImage: "assets/dona6.jpg",
            ingredients: "blueberry - sugar - Flavour - milk",
          )
        ],
      ),
    );
    return Lista;
  }
}
