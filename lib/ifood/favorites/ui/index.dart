import 'package:flutter/material.dart';
import 'franja.dart';

class Favoritos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              margin: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05),
              child: Text(
                "Tus favoritos",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: "chbold",
                    color: Colors.black),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: <Widget>[Franja(), Franja(),Franja(), Franja(),],
              ),
            )
          ],
        ),
      )),
    );
  }
}
