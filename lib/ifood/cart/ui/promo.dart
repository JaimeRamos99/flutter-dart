import 'package:flutter/material.dart';
import 'addIcon.dart';

class Promo extends StatelessWidget {
  final String valor;

  const Promo({Key key, this.valor}) : super(key: key);

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
              Icons.local_activity,
              color: Colors.white,
              size: 40,
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                  child: Text(
                    "Código promo",
                    style: TextStyle(
                        fontFamily: "chmedium",
                        color: Colors.white,
                        fontSize: 17),
                  ),
                  margin: new EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.01)),
              Text(
                "Sin Código",
                style: TextStyle(fontFamily: "chlight", color: Colors.white),
              )
            ],
          ),
          Container(
            margin: new EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.32),
            child: Container(
              child: AddIcon(),
            ),
          )
        ],
      ),
    );
    return todo;
  }
}
