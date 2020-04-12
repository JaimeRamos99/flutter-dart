import 'package:flutter/material.dart';
import 'dropdown.dart';
import 'fromandtimecontainer.dart';
import 'lista.dart';

class FirstSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DeleteIcon = Container(
      alignment: Alignment.bottomRight,
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width,
      margin:
          new EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.04),
      child: Icon(
        Icons.delete_outline,
        size: 35,
        color: Colors.white,
      ),
    );
    final titulo = Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width,
      margin:
          new EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
      child: Text(
        "Carrito",
        style: TextStyle(
            fontFamily: "chmedium", color: Colors.white, fontSize: 32),
      ),
    );
    final thirdRow = Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Container(
              margin: new EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05),
              child: Text(
                "Entregar en ",
                style: TextStyle(
                    color: Colors.white, fontFamily: "chlight", fontSize: 21),
              )),
          Container(
            margin: new EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.07),
            child: Text(
              "Calle 66#44-35",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: "chmedium"),
            ),
          ),
          Dropdown()
        ],
      ),
    );
    final listaContainer = Container(
      height: MediaQuery.of(context).size.height * 0.50,
      margin: new EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.05,
          right: MediaQuery.of(context).size.width * 0.05,
          top: MediaQuery.of(context).size.height * 0.02),
      child: Lista(),
    );
    final todo = Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.85,
      decoration: BoxDecoration(
          color: Color(0xFF4A056C),
          borderRadius: new BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50))),
      child: Column(
        children: <Widget>[
          DeleteIcon,
          titulo,
          thirdRow,
          FromAndTime(),
          listaContainer
        ],
      ),
    );
    return todo;
  }
}
