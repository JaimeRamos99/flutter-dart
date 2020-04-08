import 'package:flutter/material.dart';

class Delivery extends StatelessWidget {
  final String valor;

  const Delivery({Key key, this.valor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = Container(
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.20,
            height: MediaQuery.of(context).size.height * 0.10,
            margin: new EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.02,
                right: MediaQuery.of(context).size.width * 0.04),
            decoration: BoxDecoration(
                color: Color(0xFFDDA5FA),
                borderRadius: BorderRadius.circular(20)),
            child: Icon(
              Icons.motorcycle,
              color: Colors.white,
              size: 40,
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                margin: new EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.01),
                child: Text(
                  "Envío",
                  style: TextStyle(
                      fontFamily: "chmedium",
                      color: Colors.white,
                      fontSize: 17),
                ),
              ),
              Text(
                "GRATIS",
                style: TextStyle(fontFamily: "chlight", color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
    return todo;
  }
}
