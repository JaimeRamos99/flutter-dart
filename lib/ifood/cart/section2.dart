import 'package:flutter/material.dart';

class SecondSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final comprar = Container(
      width: MediaQuery.of(context).size.width * 0.50,
      height: MediaQuery.of(context).size.height * 0.08,
      margin:
          new EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
      child: RaisedButton(
        onPressed: () {},
        textColor: Colors.white,
        padding: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0)),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.50,
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: new BorderRadius.all(Radius.circular(15))),
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.10,
            left: MediaQuery.of(context).size.width * 0.10,
          ),
          child: Center(
            child: const Text('COMPRAR',
                style: TextStyle(fontSize: 16, fontFamily: "chmedium")),
          ),
        ),
      ),
    );
    final precio = Container(
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.08,
      margin: new EdgeInsets.only(
        right: MediaQuery.of(context).size.width * 0.01,
      ),
      child: RaisedButton(
        onPressed: () {},
        textColor: Colors.white,
        padding: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0)),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.35,
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: new BorderRadius.all(Radius.circular(15))),
          child: Center(
            child: const Text('\$20500',
                style: TextStyle(fontSize: 16, fontFamily: "chmedium")),
          ),
        ),
      ),
    );
    final todo = Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        color: Color(0xFFFACBCD),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[precio, comprar],
      ),
    );
    return todo;
  }
}
