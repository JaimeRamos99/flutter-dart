import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final container_foto = Container(
        width: MediaQuery.of(context).size.width * 0.70,
        height: MediaQuery.of(context).size.height * 0.50,
        decoration: BoxDecoration(
          borderRadius: new BorderRadius.only(bottomRight: Radius.circular(20)),
          color: Colors.blue,
          shape: BoxShape.rectangle,
          boxShadow: [BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0, // has the effect of softening the shadow
            spreadRadius: 0.01, // has the effect of extending the shadow
          )],
          //color: Colors.red,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/dona7.jpg")),
        ));
    final info_foto = Container(
      height: MediaQuery.of(context).size.height * 0.50,
      width: MediaQuery.of(context).size.width * 0.25,
      margin: new EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              margin: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.10,
                  bottom: MediaQuery.of(context).size.height * 0.04),
              child: Column(
                children: <Widget>[
                  Text(
                    "Peso",
                    style: TextStyle(fontFamily: "chbold", fontSize: 18),
                  ),
                  Text(
                    "400g",
                    style: TextStyle(fontFamily: "chbold", fontSize: 17, color: Colors.pinkAccent),
                  ),
                ],
              )),
          Container(
              margin: new EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.04),
              child: Column(
                children: <Widget>[
                  Text(
                    "Calorías",
                    style: TextStyle(fontFamily: "chbold", fontSize: 17),
                  ),
                  Text(
                    "450kcal",
                    style: TextStyle(fontFamily: "chbold", fontSize: 18, color: Colors.pinkAccent),
                  ),
                ],
              )),
          Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "People",
                    style: TextStyle(fontFamily: "chbold", fontSize: 18),
                  ),
                  Text(
                    "1 person",
                    style: TextStyle(fontFamily: "chbold", fontSize: 18, color: Colors.pinkAccent),
                  ),
                ],
              )),
        ],
      ),
    );
    final todo = Row(
      children: <Widget>[container_foto, info_foto],
    );

    return todo;
  }
}