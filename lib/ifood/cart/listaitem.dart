import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'listitemcontainer4.dart';
class ListaItem extends StatelessWidget {
  final String pathImage;

  const ListaItem({Key key, this.pathImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final containerFoto = Container(
      width: MediaQuery.of(context).size.width * 0.20,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          //color: Colors.red,
          image:
              DecorationImage(fit: BoxFit.fill, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.circular(20)),
    );
    final containerCantidad = Container(
      width: MediaQuery.of(context).size.width * 0.10,
      child: Text(
        "x1",
        style: TextStyle(fontFamily: "chmedium", color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
    final containerTres = Container(
      width: MediaQuery.of(context).size.width * 0.40,
      child: Column(
        children: <Widget>[
          Container(
            margin: new EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.02),
            child: Text("Raspberry Donut",
                style: TextStyle(
                    color: Colors.white, fontFamily: "chlight", fontSize: 16)),
          ),
          Text("\$ 12000",
              style: TextStyle(color: Colors.white, fontFamily: "chbold"))
        ],
      ),
    );
    final contenedor = Container(
      height: MediaQuery.of(context).size.height * 0.10,
      margin: new EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.03),
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
