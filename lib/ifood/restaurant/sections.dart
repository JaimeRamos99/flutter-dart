import 'package:flutter/material.dart';
import 'item.dart';
import 'itemPunto.dart';

class Sections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sections = Container(
      margin: new EdgeInsets.only(left: MediaQuery.of(context).size.width*0.02),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.05,
      //color: Colors.green,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ItemPunto(nombre: "Populares"),
          Itemm(
            nombre: "Donas",
          ),
          Itemm(
            nombre: "Malteadas",
          ),
          Itemm(
            nombre: "Hamburguesas",
          ),
          Itemm(
            nombre: "Cafés",
          ),
          Itemm(
            nombre: "Donas",
          ),
          Itemm(
            nombre: "Donas",
          ),
          Itemm(
            nombre: "Donas",
          )
        ],
      ),
    );
    return sections;
  }
}
