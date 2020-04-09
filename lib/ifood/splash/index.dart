import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/thumbs_icons.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todo = Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color(0xFFF1B7AB)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              child: Icon(
            Thumbs.emo_thumbsup,
            size: 80,
          )),
          Container(
            margin: new EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05),
            child: Text(
              "DeliDelivery ",
              style: TextStyle(fontSize: 40, fontFamily: "chbold"),
            ),
          ),
          Container(
            child: Text(
              "App",
              style: TextStyle(fontSize: 25, fontFamily: "chmedium"),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    topLeft: Radius.circular(25))),
            margin: new EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.height * 0.15),
            child: Text(
              "Somos los más RAPPIdos",
              style: TextStyle(
                  color: Colors.purple, fontFamily: "chmedium", fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      body: Container(
        color: Color(0xFFFACBCD),
        child: todo,
      ),
    );
  }
}
