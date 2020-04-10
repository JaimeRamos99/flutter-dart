import 'package:flutter/material.dart';
import 'item.dart';
class Franja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final etiqueta = Container(
      margin:
          new EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
      padding:
          new EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
      decoration: BoxDecoration(
          color: Color(0xFFFACBCD),
          borderRadius: new BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          )),
      alignment: Alignment.bottomLeft,
      height: MediaQuery.of(context).size.height * 0.04,
      width: MediaQuery.of(context).size.width * 0.50,
      child: Text(
        "Chuzo de la 85",
        style: TextStyle(fontSize: 20, fontFamily: "chmedium"),
      ),
    );
    final contenedor = Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.20,
      margin: new EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.05,
          bottom: MediaQuery.of(context).size.height * 0.03),
      decoration: BoxDecoration(
          color: Color(0xFFFACBCD),
          borderRadius: new BorderRadius.only(bottomLeft: Radius.circular(25))),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[Item(), Item(), Item(), Item(), Item(), Item()],
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[etiqueta, contenedor],
    );
  }
}
