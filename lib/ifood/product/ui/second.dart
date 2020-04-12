import 'package:flutter/material.dart';

class SecondProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todo = Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.35,
      margin: new EdgeInsets.only(
          right: MediaQuery.of(context).size.width * 0.05,
          left: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: MediaQuery.of(context).size.height * 0.03,
                margin: new EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.01,
                    top: MediaQuery.of(context).size.height * 0.02),
                child: Text(
                  "Raspberry Donut",
                  style: TextStyle(fontFamily: "chheavy", fontSize: 20),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.03,
                  margin: new EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.02),
                  child: Text(
                    "\$ 10000",
                    style: TextStyle(
                        fontFamily: "chlight",
                        fontSize: 20,
                        color: Colors.pinkAccent),
                  ))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.10,
                  ),
                  width: MediaQuery.of(context).size.width * 0.90,
                  margin: new EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.02),
                  child: Text(
                      "Naturally and artificially flavored, does not contain real Raspberry.",
                      style: TextStyle(fontFamily: "chmedium", fontSize: 16)))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: MediaQuery.of(context).size.height * 0.14,
                child: Text("Descripción adicional.",
                    style: TextStyle(fontFamily: "chlight", fontSize: 18)),
              )
            ],
          ),
        ],
      ),
    );
    return todo;
  }
}