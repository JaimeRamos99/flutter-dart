import 'package:flutter/material.dart';
import 'listitemcontainer4.dart';

class ListaItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final containerFoto = Container(
      width: MediaQuery.of(context).size.width * 0.20,
      color: Colors.blue,
    );
    final containerCantidad = Container(
      width: MediaQuery.of(context).size.width * 0.10,
      color: Colors.purple,
    );
    final containerTres = Container(
      width: MediaQuery.of(context).size.width * 0.40,
      color: Colors.green,
    );
    final contenedor = Container(
      height: MediaQuery.of(context).size.height * 0.10,
      child: Row(
        children: <Widget>[
          containerFoto,
          containerCantidad,
          containerTres,
          ListaItemCuatro()
        ],
      ),
    );
    return contenedor;
  }
}
