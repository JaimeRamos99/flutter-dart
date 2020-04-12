import 'package:flutter/material.dart';
import 'listitem.dart';

class Lista extends StatelessWidget {
  //star
  @override
  Widget build(BuildContext context) {
    final content = Container(
      margin: new EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.07,
        right: MediaQuery.of(context).size.width * 0.07,
        top: MediaQuery.of(context).size.height * 0.01,
      ),
      width: MediaQuery.of(context).size.width * 0.86,
      height: MediaQuery.of(context).size.height * 0.57,
      decoration: BoxDecoration(
          //color: Colors.greenAccent,
          ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ItemLista(
            pathImage: "assets/pizza1.jpg",
            restaurantName: "Pizzatel",
            puntaje: "4,2",
            tiempo: "20-30 min",
            distancia: "1,5 km",
          ),
          ItemLista(
              pathImage: "assets/pizza2.jpg",
              restaurantName: "Papa Johns",
              puntaje: "4,9",
              tiempo: "15-20 min",
              distancia: "0,9 km"),
          ItemLista(
              pathImage: "assets/pizza3.jpg",
              restaurantName: "Domino's pizza",
              puntaje: "3,7",
              tiempo: "30-40 min",
              distancia: "2,0 km"),
          ItemLista(
              pathImage: "assets/pizza4.jpg",
              restaurantName: "Salvator´s pizza",
              puntaje: "4,4",
              tiempo: "15-20 min",
              distancia: "1,0 km"),
        ],
      ),
    );
    return content;
  }
}
